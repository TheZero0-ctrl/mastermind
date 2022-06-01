require_relative 'display.rb'

class Game
    include Display
    def play
        instruction
    end
end