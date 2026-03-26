#I'm going to experiment with this test code block to see if it helps my work flow.
#I can implement part of my project here and then move it when it's done.

#I haven't looked up how games track logic flow. I think this is something the project
#wants me to figure out. So I am struggling to figure out how to do the game loop. I am
#going to practice ideas here and see where it takes me.

#I"m glad I have been able to get back into doing this. I just couldn't mentally work on this
#project for a bit after I put in that strong effort to do the foundations and then
#kept going hard until I got to this point. I took some time off but I'm glad I can 
#now get back to it. I just couldn't bring myself to work on it. I am hitting a road
#block right now, but I can figure this out. It might take me a few hours, but I know
#I can solve these problems.



require_relative './lib/game_logic'
require_relative './lib/game_state'
require_relative './lib/game_text'

gl = GameLogic.new
gt = GameText.new
game_over = false
temp_value = ' '
#gs = GameState.new
gs = {hidden_word: '', guesses: 0, misses: 0, chosen_chars: []}


#set up game variables
gs[:hidden_word] = gl.retrieve_word
puts gs[:hidden_word]
#run game loop
if !game_over
  #game loop
  loop do
      gt.enter_selection
      puts gl.hidden_word(gs[:hidden_word], gs[:chosen_chars])
      gl.show_board(gs[:misses])
      temp_value = gl.valid_input
      puts temp_value
      gl.update_game_state(gs, temp_value)
      puts gs[:misses]
      game_over = gl.check_game_over(gs, game_over)
      #game_over = true 
    break if game_over
  end
end
  gl.show_board(gs[:misses])
  gl.end_game(gs)
