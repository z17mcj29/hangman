require_relative './lib/game_text'
require_relative './lib/game_logic'
require_relative './lib/game_state'
gl = GameLogic.new
gt = GameText.new
gs = {}

gs = gl.game_state_reset(gs)
puts gs
gs = gl.save_load_game(gs)