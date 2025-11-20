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
gl.show_board(0)
gl.show_board(1)
gl.show_board(2)
gl.show_board(3)
gl.show_board(4)
gl.show_board(5)
gl.show_board(6)
gl.show_board(7)
gl.show_board(8)

