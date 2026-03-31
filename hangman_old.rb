#external classes
require_relative './lib/game_text'
require_relative './lib/game_logic'
require_relative './lib/game_state'

#game variables
gt = GameText.new
gl = GameLogic.new
gs = {}

#game method I'm not sure how to do this from a class.
def game_loop(gs)
  if !gs[:game_over]
    loop do
      gt.enter_selection
      puts gl.hidden_word(gs[:hidden_word], gs[:chosen_chars])
      gl.show_board(gs[:misses])
      temp_value = gl.valid_input
      puts temp_value
      gl.update_game_state(gs, temp_value)
      puts gs[:misses]
      gs[:game_over] = gl.check_game_over(gs, game_over)
      break if gs[:game_over]
end


#begin game
gs = gl.game_state_reset(gs)
gs[:hidden_word] = gl.retrieve_word
puts gs[:hidden_word] #this is for debugging, take out in final version
  #add save/load option here.

#continuation loop
game_loop(gs)

#save loop

#end game



