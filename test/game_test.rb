gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/game'
require_relative '../lib/messages'
require_relative '../lib/answer'

class GameTest < Minitest::Test
  def test_that_player_input_p_then_play_game
    instream = $stdin
    outstream = $stdout
    game = Game.new(instream,outstream)
    game.play


    # cli = CLI.new(instream, outstream)
    # messages = Messages.new
    # assert_equal messages.pick_level, cli.call
  end
end
