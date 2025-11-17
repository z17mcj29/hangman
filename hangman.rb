require_relative './lib/game_text'
require_relative './lib/game_logic'

gt = GameText.new
gl = GameLogic.new

gt.welcome_to_hangman
gt.select_mode
testword = gl.retrieve_word
puts testword

