require_relative './lib/game_text'
require_relative './lib/game_logic'
require_relative './lib/game_state'

gt = GameText.new
gl = GameLogic.new
gs = GameState.new

gt.welcome_to_hangman
gt.select_mode
testword = gl.retrieve_word
puts testword
gs.hidden_word = testword
puts gs.hidden_word
gl.show_board(gs.misses)


