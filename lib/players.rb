class Players
  attr_accessor :name, :char, :player_input

  def initialize(name, char)
    @name = name
    @char = char
    @player_input = []
    
  end
end
