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
    if quit? == false
    outstream.print messages.welcome
      until quit?
        @input = instream.gets.strip
        what_to_do
      end
  end
end

    def what_to_do
      case
      when play?
        game = Game.new(instream, outstream)
        game.play
      when instructions?
        outstream.print messages.instructions
      when quit?
        outstream.puts messages.bye
      else
        outstream.print messages.invalid_entry
      end
    end

    def play?
      input.downcase == "p" || input.downcase == "play"
    end

    def instructions?
      input.downcase == "i" || input.upcase == "instructions"
    end

    def quit?
      input.downcase == "q" || input.downcase == "quit"
    end
end
