gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/answer'

class AnswerTest < Minitest::Test
  def test_creates_an_easy_sequence_with_a_length_of_4
    level = 'b'
    answer_creator = Answer.new
    answer = answer_creator.sequence(level)
    assert_equal 4, answer.length
  end

  def test_creates_a_medium_sequence_with_a_length_of_5
    level = 'm'
    answer_creator = Answer.new
    answer = answer_creator.sequence(level)
    assert_equal 5, answer.length
  end

  def test_creates_a_hard_sequence_with_a_length_6
    level = 'h'
    answer_creator = Answer.new
    answer = answer_creator.sequence(level)
    assert_equal 6, answer.length
  end

  def test_only_includes_possible_chars
    level = 'b'
    answer_colors = %w(r g y b)
    answer_creator = Answer.new
    answer = answer_creator.sequence(level)
    assert answer.all? {|char| answer_colors.include? char}
  end

end
