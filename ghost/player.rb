class Player
    def initialize(player_name)
        @player_name = player_name
                
    end
    attr_reader :player_name
    def get_letter
        p "Enter a letter"
        letter = gets.chomp
    end
end