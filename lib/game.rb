class Game

  attr_reader :instream, :outstream, :messages, :input, :turn, :num_correct_elements, :answer

  def initialize(instream, outstream)
    @turn = 0
    @instream = instream
    @outstream = outstream
    @messages = Messages.new
    @answer = Answer.new.easy_sequence
    @guess = ''
    @num_correct_elements = 0
  end

  def play
    until quit? || win?
    outstream.puts messages.start_game
    outstream.puts messages.prompt_guess
    outstream.print ">"
      @input = instream.gets.strip
      @guess = input.split(//)
     if guess_too_short?
      outstream.puts messages.guess_too_short
    elsif guess_too_long?
      outstream.puts messages.guess_too_long
    elsif win?
      turn
      outstream.puts messages.congrats(@answer,@turn)
    # elsif invalid_guess?
    #   outstream.puts messages.invalid_guess
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

  def guess_too_short?
    @input.size < 4
  end

  def guess_too_long?
    @input.size > 4
  end

  def win?
    @guess == @answer
  end

  def invalid_guess?
    # @guess inlcudes a char other than level's choices
  end

  def turn
    @turn += 1
  end

  def num_correct_elements
    puts @answer
    not_yet_guessed = @answer.dup
    @guess.each do |e|
      index = not_yet_guessed.find_index(e)
      not_yet_guessed.delete_at(index) if index !=nil
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


end
