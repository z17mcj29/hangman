require_relative './lib/game_text'
require_relative './lib/game_logic'
require_relative './lib/game_state'
gl = GameLogic.new
gt = GameText.new
gs = {}


#Game Methods

def save_load(gl)
  puts "Welcome to Hangman. Press the #1 at any time during game play"
  puts "to save your game."
  puts "Press the #2 at any time during game play to load saved game."
  puts "Press S to start a new game."
  puts "Press C to continue saved game."
  new_or_continue = gl.begin_game_input
  new_or_continue
end

def load_game(gs)
  gs = Marshal.load(File.read("gamestate.txt")) if File.file?('gamestate.txt')
end

def save_state(gs)
  File.open("gamestate.txt", "w") { |f| f.write(Marshal.dump(gs))}
end

def game_loop(gt, gl, gs)
  if !gs[:game_over]
    loop do
      gt.enter_selection
      puts gl.hidden_word(gs[:hidden_word], gs[:chosen_chars])
      gl.show_board(gs[:misses])
      temp_value = gl.valid_input
      puts temp_value
      gl.update_game_state(gs, temp_value)
      puts gs[:misses]
      gs[:game_over] = gl.check_game_over(gs)
      gs = gl.save_load_game(gs)
      break if gs[:game_over]
    end
  end
end

#begin game
new_or_continue = save_load(gl)
if new_or_continue == 's'
  #new game
  gs = gl.game_state_reset(gs)
  gs[:hidden_word] = gl.retrieve_word
  puts gs[:hidden_word]
  game_loop(gt, gl, gs)
  puts 'new game'
else
  #continue game
  gs = load_game(gs)
  game_loop(gt, gl, gs)
  puts 'continue game'
end

gl.show_board(gs[:misses])
gl.end_game(gs)


=begin
gs = {test_string: "This is a test", test_number: 5, test_array: [1, 2, 3]}

File.open("items.txt", "w") { |f| f.write(Marshal.dump(gs))}

gs = Marshal.load(File.read("items.txt"))

p gs

gs[:test_string] = "Revised Text"

File.open("items.txt", "w") { |f| f.write(Marshal.dump(gs))}

gs = Marshal.load(File.read("items.txt"))
p gs
=end
