class Messages
  def welcome
    puts "\n".ljust(80,"*").purple
    puts"\n"
    puts "WELCOME TO MASTERMIND".center(80).yellow
    puts "\n".ljust(80,"*").purple
    print "\nWould you like to (p)lay, read the (i)nstructions, or (q)uit? \n> "
  end

  def pick_level
    puts "Select your level\n\t"
    puts "(b)eginner = 4 characters, 4 colors\n\t".green
    puts "(m)edium = 6 characters, 5 colors\n\t".yellow
    puts "(h)ard = 8 characters, 6 colors\n".purple
    print "> "
  end

  def start_game
    "What is your first guess?\n> "
  end

  def too_short (i, colors)
    puts "Your guess is too short, try again with #{i} elements made up of #{colors}.".red
    "> "
  end

  def too_long(i, colors)
    puts "Your guess is too long, try again with #{i} elements made up of #{colors}.".red
    "> "
  end

  def guess_feedback(turn, input, num_correct_colors, num_correct_elements, num_correct_positions)
    puts "Guess #{turn} = '#{input}'. Correct colors: #{num_correct_colors}, elements: #{num_correct_elements}, positions: #{num_correct_positions}.".yellow
    "What is your next guess?\n> "
  end

  def congrats(input, turn, time)
    puts "\nCongratulations! You guessed the sequence '#{input}' in #{turn} turn(s) and #{time[0]} minutes, #{time[1]} seconds!".green
    "\nDo you want to (p)lay again or (q)uit?\n> "
  end
  def bye
    "Goodbye!".yellow
  end
  def instructions
    "Insturctions:
    A secret sequence will be created with a certain size and amount of colors based on the chosen level.
    Try to guess the sequence by only entering the first letter of each color. For example a beginner guess
    would look like 'rgby'. Once you made your guess you will get feedback on the amount of colors you have
    correct, elemets and positions. Keep guessing until you have the correct sequence! While playing, if
    you would like to start over with a new game enter (q)uit. \n\nWould you like to (p)lay or (q)uit? \n> ".green
  end

  def dont_go
    puts"Are you sure you want to go? (P)lay a new game or (q)uit?".red
    "> "
  end

  def invalid
    puts"Invalid entry.".red
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit? \n> "
  end

  def try_again
    puts "Invalid entry, try again.".red
    "> "
  end

  def default_beginner
  puts "I do not recognize that, I will start you with a beginner sequnce.".red
  "****A sequence has been genearated a sequence with 4 elements made up of of the following characters (#{'r'.red})ed (#{'b'.blue})lue (#{'g'.green})reen (#{'y'.yellow})ellow.****\n"
  end

  def beginner
    "****A sequence has been genearated a sequence with 4 elements made up of of the following characters (#{'r'.red})ed (#{'b'.blue})lue (#{'g'.green})reen (#{'y'.yellow})ellow.****\n"
  end

  def medium
    "****A sequence has been genearated a sequence with 5 elements made up of of the following characters (#{'r'.red})ed (#{'b'.blue})lue (#{'g'.green})reen (#{'y'.yellow})ellow (#{'w'.white})hite.****\n"
  end

  def hard
    "****A sequence has been genearated a sequence with 5 elements made up of of the following characters (#{'r'.red})ed (#{'b'.blue})lue (#{'g'.green})reen (#{'y'.yellow})ellow (#{'w'.white})hite (#{'p'.purple})urple .****\n"
  end

end
