class Answer
  attr_reader :answer, :colors, :i

  def initialize
    @answer = []
  end

  def sequence(level)
    if level == 'm'
      @colors = %w(r g y b w)
      i = 5
    elsif level == 'h'
      @colors = "rgybwp".chars
      i = 6
    elsif level == "b"
      @colors = 'rgby'.chars
      i = 4
    else
      puts "I do not recognize '#{level}', I will start you with a beginner sequence"
      @colors = 'rgby'.chars
      i = 4
    end
    make_answer(i)
  end

  def make_answer(i)
    i.times do
      @answer << @colors.sample
    end
    @answer
  end
end
