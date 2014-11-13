class Answer
  attr_reader :answer, :colors, :i, :message

  def initialize
    @answer = []
    @message = Messages.new
  end

  def sequence(level)
    if level == 'm'
      @colors = %w(r g y b w)
      i = 5
      puts message.medium

    elsif level == 'h'
      @colors = "rgybwp".chars
      i = 6
      puts message.hard

    elsif level == "b"
      @colors = 'rgby'.chars
      i = 4
      puts message.beginner

    else
      puts default_beginner
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
