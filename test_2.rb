require_relative './lib/game_text'
require_relative './lib/game_logic'
require_relative './lib/game_state'
gl = GameLogic.new

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


#begin game
new_or_continue = save_load(gl)
if new_or_continue == 's'
  #new game
  puts 'new game'
else
  #continue game
  puts 'continue game'
end



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
