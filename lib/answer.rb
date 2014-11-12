class Answer

  def initialize
    @answer = []
  end

  def easy_sequence
    colors = 'rgby'.chars
    i = 4
    create_sequence(colors, i)
  end

  def medium_sequence
    colors = "rgybw".chars
    i = 5
    create_sequence(colors, i)
  end

  def hard_sequence
    colors = "rgybwp".chars
    i = 6
    create_sequence(colors, i)
  end

  def create_sequence(colors, i)
    i.times do
      @answer << colors.sample
    end
    @answer
  end
end
