class Game

  attr_reader :instream, :outstream, :messages, :input, :turn, :answer

  def initialize(instream, outstream)
    @turn = 0
    @instream = instream
    @outstream = outstream
    @messages = Messages.new
    @answer = Answer.new.easy_sequence
    @valid_colors = ['r','g','b','y']
  end

  def play
    puts @answer
    @start_time = Time.new
    outstream.puts messages.start_game
    outstream.puts messages.prompt_guess

    until quit? || win?
      outstream.print ">"
      @input = instream.gets.strip
      @guess = @input.chars
      if quit?
        outstream.puts messages.dont_go
        outstream.print ">"
      elsif invalid_guess?
        if @guess.size < 4
          outstream.puts messages.too_short
        elsif @guess.size > 4
          outstream.puts messages.too_long
        else !@guess.all? {|char| @valid_colors.include? char}
          outstream.puts messages.invalid
        end
      elsif win?
        turn
        @stop_time = Time.new
        outstream.puts messages.congrats(@input,@turn, time)
        outstream.print ">"
      else
        turn
        outstream.puts messages.guess_feedback(@turn, @input, num_correct_colors, num_correct_elements, num_correct_positions)
        outstream.puts messages.next_guess(@turn)
      end
    end
  end

  def quit?
    @input == 'q' || @input == "quit"
  end

  def win?
    @guess == @answer
  end

  def invalid_guess?
    !(@guess.size == @answer.size && @guess.all? {|char| @valid_colors.include? char})
  end

  def turn
    @turn += 1
  end

  def num_correct_elements
    not_yet_guessed = @answer.dup
    @guess.each do |e|
      index = not_yet_guessed.find_index(e)
      not_yet_guessed.delete_at(index) if index
      end
    @guess.length - not_yet_guessed.length
  end


  def num_correct_positions
    correct = []
    @guess.zip(answer).select do |g, a|
    correct << g if g == a
    end
    correct.length
  end

  def num_correct_colors
    @correct_count = 0
    answer_dup = @answer.dup
    @guess.each do |letter|
      @correct_count += 1 if answer_dup.include?(letter)
      answer_dup.delete(letter)
    end
    @correct_count
  end

  def time
    mm, ss = (@stop_time - @start_time).to_i.divmod(60)
  end

end
