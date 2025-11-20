

class GameState
attr_accessor :hidden_word, :guesses, :misses

  def initialize
    @hidden_word = []
    @guesses = []
    @misses = 0
  end

end