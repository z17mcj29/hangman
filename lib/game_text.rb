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

  def hidden_word(word, chosen_words)
    final_word = ''
    words = word.split("")
    word.each_with_index do |char, i|
    if char = chosen_words[i]
      final_word[i] = char
    else
      final_word[i] = '_'
    end
  end

    puts final_word
  end

end