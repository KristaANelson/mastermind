class Answer

  def initialize
    @answer = []
  end

  def easy_sequence
    possible_colors = "rgyb"
    length = 4
    easy_choices = %w(r r r r y y y y b b b b g g g g)
    @answer = easy_choices.shuffle.pop(4)
  end

  def medium_sequence
    possible_colors = "rgybw"
    length = 5
    medium_choices = %w(R R R R R R
                        G G G G G G
                        Y Y Y Y Y Y
                        B B B B B B
                        W W W W W W)
    @answer = medium_choices.shuffle.pop(5)
  end

  def hard_sequence
    possible_colors = "rgybwp"
    length = 6
    hard_choices = %w(R R R R R R R R
                      G G G G G G G G
                      Y Y Y Y Y Y Y Y
                      B B B B B B B B
                      W W W W W W W W
                      P P P P P P P P)
    @answer = hard_choices.downcase.shuffle.pop(6)
  end
end
