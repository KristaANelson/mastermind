require 'game'
require 'messages'
require 'answer'

class CLI
  attr_reader :input, :message, :instream, :outstream

  def initialize(instream, outstream)
    @input = ""
    @message = Messages.new
    @instream = instream
    @outstream = outstream
  end

  def call
    if quit? == false
    outstream.print message.welcome
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
        outstream.print message.instructions
      when quit?
        outstream.puts message.bye
      else
        outstream.puts "this???"
        # messages.invalid_entry
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
