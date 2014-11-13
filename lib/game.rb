require 'guess_checker'
class Game

  attr_reader :instream, :outstream, :messages, :answer_creator
  attr_accessor :turn, :input, :guess, :answer, :start_time, :stop_time

  def initialize(instream, outstream)
    @turn = 0
    @instream = instream
    @outstream = outstream
    @messages = Messages.new
    @input = ''
    @guess = ''
    @answer_creator = Answer.new
  end

  def play
    start_game
    until quit? || win?
      format_input
      if quit?
        quit_message
      elsif invalid_guess?
        invalid_message
      elsif win?
        win_message
      else
        check_guess
      end
    end
  end

  def start_game
    if quit?
       outstream.puts messages.bye
     else
      outstream.print messages.pick_level
      level = instream.gets.chomp
      self.answer = answer_creator.sequence(level)
      puts answer.join.blue
      start
      outstream.print messages.start_game
    end
  end

  def check_guess
    add_turn
    colors = GuessChecker.num_correct_colors(answer, guess)
    positions = GuessChecker.num_correct_positions(answer, guess)
    elements = GuessChecker.num_correct_elements(answer, guess)
    outstream.print messages.guess_feedback(turn, input, colors, elements, positions)
  end

  def quit?
    input.downcase == 'q' || input.downcase == "quit"
  end

  def win?
    guess == answer
  end

  def invalid_guess?
    !(guess.size == answer.size && guess.all? {|char| answer_creator.colors.include? char})
  end

  def win_message
    add_turn
    stop
    outstream.print messages.congrats(input, turn, total_time)
  end

  def invalid_message
    if guess.size < answer.size
      outstream.print messages.too_short(answer.length, answer_creator.colors)
    elsif guess.size > answer.size
      outstream.print messages.too_long(answer.length, answer_creator.colors)
    else !(guess.all? {|char| answer_creator.colors.include? char})
      outstream.print messages.try_again
    end
  end

  def quit_message
    outstream.print messages.dont_go
  end

  def add_turn
    self.turn += 1
  end

  def total_time
    mm, ss = (stop_time - start_time).to_i.divmod(60)
  end

  def start
    self.start_time = Time.new
  end

  def stop
    self.stop_time = Time.new
  end

  def format_input
    self.input = instream.gets.strip
    self.guess = input.chars
  end


end
