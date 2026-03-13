#You can see that I haven't worked on this lesson for a few months. I have still been learning about programming and I have learned much more about
#hashes. I actually believe I can make this game without using my GameState class. I am going to create a hash that contains the information I need
#and then I can simply save and load that hash to do complete the game load and save part of this lesson.
#I am going to leave this in the project file as I do everything I create as a student so I have historical reference
#of where I was at and how I thought of things as I was learning to code.

class GameState
attr_accessor :hidden_word, :guesses, :misses

  def initialize
    @hidden_word = []
    @guesses = []
    @misses = 0
  end

end