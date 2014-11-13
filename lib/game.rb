require 'guess_checker'
class Game

  attr_reader :instream, :outstream, :messages, :input, :turn
  def initialize(instream, outstream)
    @turn = 0
    @instream = instream
    @outstream = outstream
    @messages = Messages.new
    @input = ''
  end

  def play
    start_game
    until quit? || win?
      @input = instream.gets.strip
      @guess = @input.chars
      if quit?
        outstream.print messages.dont_go
      elsif invalid_guess?
        return_invalid_message
      elsif win?
        winning_response
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
      @level = instream.gets.chomp
      @start_time = Time.new
      @answer_creator = Answer.new
      @answer = @answer_creator.sequence(@level)
      puts @answer
      outstream.print messages.start_game(@answer.length, @answer_creator.colors)
    end
  end

  def check_guess
    turn
    colors = GuessChecker.num_correct_colors(@answer, @guess)
    positions = GuessChecker.num_correct_positions(@answer, @guess)
    elements = GuessChecker.num_correct_elements(@answer, @guess)
    outstream.print messages.guess_feedback(@turn, @input, colors, elements, positions)
  end

  def quit?
    @input.downcase == 'q' || @input.downcase == "quit"
  end

  def win?
    @guess == @answer
  end
  def winning_response
    turn
    @stop_time = Time.new
    outstream.print messages.congrats(@input,@turn, time)
  end


  def invalid_guess?
    !(@guess.size == @answer.size && @guess.all? {|char| @answer_creator.colors.include? char})
  end

  def return_invalid_message
    if @guess.size < @answer.size
      outstream.print messages.too_short(@answer.length, @answer_creator.colors)
    elsif @guess.size > @answer.size
      outstream.print messages.too_long(@answer.length, @answer_creator.colors)
    else !(@guess.all? {|char| @answer_creator.colors.include? char})
      outstream.print messages.try_again
    end
  end

  def turn
    @turn += 1
  end

  def time
    mm, ss = (@stop_time - @start_time).to_i.divmod(60)
  end

end
