class ValidateGuess
  attr_accessor :valid_colors

  def initialize(guess, length, valid_colors)
    self.guess = guess
    self.valid_colors = valid_colors
  end

  def valid?
    return false unless guess.length == length
    guess.chars.all? {|char| valid_colors.include? char}
  end

  def guess_too_short?
    @input.size < 4
  end

  def guess_too_long?
    @input.size > 4
  end

end
