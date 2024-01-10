require_relative 'throw'

class Round
  @@round_number = 0

  def initialize
    @@round_number += 1
    @strike = false
    @spare = false
    @total_points = 0
  end

  def do_round
    first_throw = Throw.new

    if first_throw.points == 10
      @strike = true
    else
      second_throw = Throw.new
      @total_points = first_throw.points + second_throw.points
      @spare = @total_points == 10
    end

    puts "You scored #{@total_points} in round #{@@round_number}"
  end
end
