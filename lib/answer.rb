class Answer
  attr_reader :answer, :colors, :i

  def initialize
    @answer = []
  end

  def sequence(level)
    case
    when level == 'm'
      @colors = %w(r g y b w)
      i = 5
    when level == 'h'
      @colors = "rgybwp".chars
      i = 6
    when level == "b"
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
