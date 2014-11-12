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
    outstream.puts message.welcome
    outstream.puts message.play_ins_quit
    outstream.print ">"
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
        outstream.puts message.how_to_play
        outstream.puts message.play_ins_quit
        outstream.print ">"
      when quit?
        outstream.puts message.bye
      else
        outstream.puts "invalid_entry"
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
