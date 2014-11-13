require_relative 'test_helper'

class GuessCheckerTest < Minitest::Test
  def test_finds_1_correct_elements
    answer = %w(y r y g)
    guess = %w(y b b b)
    assert_equal 1, GuessChecker.num_correct_elements(answer, guess)
  end

  def test_finds_2_correct_elements
    answer = %w(y r y g)
    guess = %w(y b g b)
    assert_equal 2, GuessChecker.num_correct_elements(answer, guess)
  end

  def test_finds_3_correct_elements
    answer = %w(y r y g)
    guess = %w(y b g y)
    assert_equal 3, GuessChecker.num_correct_elements(answer, guess)
  end

  def test_finds_4_correct_elements
    answer = %w(y r y g)
    guess = %w(y g y r)
    assert_equal 4, GuessChecker.num_correct_elements(answer, guess)
  end

  def test_finds_correct_colors_1
  answer = %w(y r y g)
  guess = %w(y b b b)
  assert_equal 1, GuessChecker.num_correct_colors(answer, guess)
  end

  def test_finds_correct_colors_2
  answer = %w(y r y g)
  guess = %w(y b g b)
  assert_equal 2, GuessChecker.num_correct_colors(answer, guess)
  end

  def test_finds_correct_colors
  answer = %w(y r y g)
  guess = %w(y g r b)
  assert_equal 3, GuessChecker.num_correct_colors(answer, guess)
  end

  def test_finds_correct_colors
  answer = %w(b r y g)
  guess = %w(r y g b)
  assert_equal 4, GuessChecker.num_correct_colors(answer, guess)
  end

  def test_find_correct_positions_1
  answer = %w(b r y g)
  guess = %w(b y g b)
  assert_equal 1, GuessChecker.num_correct_positions(answer, guess)
  end

  def test_find_correct_positions_2
  answer = %w(b r y g)
  guess = %w(b r g b)
  assert_equal 2, GuessChecker.num_correct_positions(answer, guess)
  end

  def test_find_correct_positions_3
  answer = %w(b r y g)
  guess = %w(b r g g)
  assert_equal 3, GuessChecker.num_correct_positions(answer, guess)
  end

  def test_find_correct_positions_4
  answer = %w(b r g g)
  guess = %w(b r g g)
  assert_equal 4, GuessChecker.num_correct_positions(answer, guess)
  end

end
