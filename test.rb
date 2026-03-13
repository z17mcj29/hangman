#I'm going to experiment with this test code block to see if it helps my work flow.
#I can implement part of my project here and then move it when it's done.

#I haven't looked up how games track logic flow. I think this is something the project
#wants me to figure out. So I am struggling to figure out how to do the game loop. I am
#going to practice ideas here and see where it takes me.



require_relative './lib/game_logic'
require_relative './lib/game_state'
require_relative './lib/game_text'

gl = GameLogic.new
gt = GameText.new
game_over = false
#gs = GameState.new
gs = {hidden_word: ' ', guesses: 0, misses: 0, chosen_words: []}


#set up game variables
gs[:hidden_word] = gl.retrieve_word
puts gs[:hidden_word]
#run game loop
if !game_over
  #game loop
  loop do
      gt.enter_selection
      gt.hidden_word(gs[:hidden_word], gs[:chosen_words])
      gl.show_board(gs[:guesses])
      game_over = true 
    break if game_over
  end
else
  #end game logic
end

