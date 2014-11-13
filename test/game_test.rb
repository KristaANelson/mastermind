require_relative 'test_helper'

class GameTest < Minitest::Test
  def test_keeps_track_of_turns
    outstream = $stdout
    instream = $stdin
    game =Game.new(outstream, instream)
    game.add_turn
    game.add_turn
    game.add_turn
    assert_equal 3, game.turn
  end
end
