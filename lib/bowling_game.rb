require_relative 'round'

class BowlingGame
    
    def initialize
        @total_points=0
    end

    def play
        10.time do
            new_round=Round.new
            calculate_score(new_round)
        end
    end

    def calculate_score(round)
        @points += round.points
        bonus(round)
    end 

    def bonus(round)
        if round.strike==true
            round.points+=

        elsif round.spare==true
            round.points+=
    end
end



