class Messages
  def welcome
    "Welcome to MASTERMIND"
  end

  def play_ins_quit
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def pick_level
    "Select your level\n\t
    (b)eginner = 4 characters, 4 colors\n\t
    (m)edium = 6 characters, 5 colors\n\t
    (h)ard = 8 characters, 6 colors"
  end

  def start_game
    "I have genearated a level sequence with level.chars elements made up of level.possible_colors"
  end

  def prompt_guess
    "What's your guess?"
  end
  def guess_too_short
    "Your guess is too short, try again with level.chars elements made up of level.possible_colors"
  end
  def guess_too_long
    "Your guess is too long, try again with level.chars elements made up of level.possible_colors"
  end
  def guess_feedback(turn, input, num_correct_colors, num_correct_elements, num_correct_positions)
    "Guess #{turn} '#{input}':
    Number of correct colors:    #{num_correct_colors}
    Number of correct elements:  #{num_correct_elements}
    Number of correct positions: #{num_correct_positions}"
  end
  def congrats(answer,turn)
    "Congratulations! You guessed the sequence #{answer} in #{turn} guesses over #{@time}! \n
    Do you want to (p)lay again or (q)uit?"
  end
  def bye
    "Are you sure you want to (p)lay again? "
  end
  def how_to_play
    "Instructions go here"
  end
  def invalid_entry
    "I do not recognize that, would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end
  def invalid_guess
    "say whaaa??"
  end
  def next_guess(turn)
    "You have taken #{turn} turn(s), what is your next guess?"
  end
end
