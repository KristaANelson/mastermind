require 'game'
require 'messages'
require 'answer'

class CLI
  attr_reader :input, :messages, :instream, :outstream

  def initialize(instream, outstream)
    @input = ""
    @messages = Messages.new
    @instream = instream
    @outstream = outstream
  end

  def call
    if input != quit?
    outstream.puts messages.welcome
    outstream.puts messages.play_ins_quit
      while input != 'q'
        @input = instream.gets.strip
        what_to_do
      end
    outstream.puts messages.bye
  end
end

    def what_to_do
      case
      when play?
        game = Game.new(instream, outstream)
        game.play
      when instructions?
        outstream.puts messages.how_to_play
      when quit?
        outstream.puts messages.bye
      else
        outstream.puts messages.invalid_entry
      end
    end

    def play?
      input.downcase == "p" || input.upcase == "play"
    end

    def instructions?
      input.downcase == "i" || input.upcase == "instructions"
    end

    def quit?
      input.downcase == "q" || input.downcase == "quit"
    end
end
