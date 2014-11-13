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

  def start_game(i, colors)
    "A sequence has been genearated a sequence with #{i} elements made up of of the following characters #{colors}."
  end

  def prompt_guess
    "What is your first guess?"
  end

  def too_short (i, colors)
    "Your guess is too short, try again with #{i} elements made up of #{colors}"
  end

  def too_long(i, colors)
    "Your guess is too long, try again with #{i} elements made up of #{colors}"
  end

  def guess_feedback(turn, input, num_correct_colors, num_correct_elements, num_correct_positions)
    "Guess #{turn} = '#{input}'. Correct colors: #{num_correct_colors}, elements: #{num_correct_elements}, positions: #{num_correct_positions}"
  end

  def congrats(input, turn, time)
    "Congratulations! You guessed the sequence '#{input}' in #{turn} turn(s) and #{time[0]} minutes, #{time[1]} seconds! \nDo you want to (p)lay again or (q)uit?"
  end
  def bye
    "Goodbye!"
  end
  def how_to_play
    "A secret sequence will be created with a certain size and amount of colors based on the chosen level.
    Try to guess the sequence by only entering the first letter of each color. For example a beginner guess
    would look like 'rgby'. Once you made your guess you will get feedback on the amount of colors you have
    correct, elemets and positions. Keep guessing until you have the correct sequence! While playing, if
    you would like to start over with a new game enter (q)uit. "
  end
  def invalid_entry
    "I do not recognize that, would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def next_guess(turn)
    "What is your next guess?"
  end

  def dont_go
    "Are you sure you want to go? (P)lay a new game or (q)uit?"
  end

  def invalid
    "Invalid entry"
  end
end
