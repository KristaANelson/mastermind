gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/game'

class GameTest < Minitest::Test
  def test_knows_when_wins
    game = Game.new
    guess = 'rgby'
