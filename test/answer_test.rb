gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/answer'

class AnswerTest < Minitest::Test
  def test_creates_an_easy_sequence_with_a_length_of_4
    answer = Answer.new
    assert_equal 4, answer.easy_sequence.length
  end
  def test_creates_a_medium_sequence_with_a_length_of_5
    answer = Answer.new
    assert_equal 5, answer.medium_sequence.length
  end
  def test_creates_a_hard_sequence_with_a_length_6
    answer = Answer.new
    assert_equal 6, answer.hard_sequence.length
  end
  def test_only_includes_possible_chars
    
  end

end
