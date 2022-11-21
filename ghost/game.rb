class Game

    def self.build_dictionary
        WORDS = File.readlines("dictionary.txt").map(&:chomp)
    end

    def initialize(name1, name2)
        @player_1, @player_2 = Player.new(name1), Player.new(name2)
        @current_player = @player_1
    end
end