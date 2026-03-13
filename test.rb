#I'm going to experiment with this test code block to see if it helps my work flow.
#I can implement part of my project here and then move it when it's done.

#I haven't looked up how games track logic flow. I think this is something the project
#wants me to figure out. So I am struggling to figure out how to do the game loop. I am
#going to practice ideas here and see where it takes me.



require_relative './lib/game_logic'
require_relative './lib/game_state'

gl = GameLogic.new
#gs = GameState.new
gs = {hidden_word: ' ', guesses: 0, misses: 0}


gs[:hidden_word] = gl.retrieve_word
puts gs[:hidden_word]

