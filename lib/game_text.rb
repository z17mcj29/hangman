class GameText

  def welcome_to_hangman
    puts "Welcome to Hangman! You know the rules (hopefully)!"
    puts "Guess the word before the hangman is complete!"
  end

  def select_mode
    puts "Please select your mode. You can start a new game by pressing 'S'"
    puts "Or continue a saved game (if you have one) by pressing 'C'"
  end

  def enter_selection
    puts "Please enter your selection"
  end

  def hidden_word(secret_word, chosen_chars)
    output_word = " "
    chos_chars = chosen_chars.join
    secret_word.each_char.with_index do |word, i|
      if chos_chars.include?(word)
        output_word[i] = word
        output_word
      else
        output_word[i] = "_"
        output_word
      end
    end
    output_word
  end

end
