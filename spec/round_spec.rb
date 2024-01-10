require 'minitest/autorun'
require_relative 'throw'
require_relative 'round'

class TestRound < MiniTest::Test
  def test_initialize_round_number
    round = Round.new
    assert_equal 1, round.instance_variable_get(:@round_number)
  end

  def test_do_round_strike
    allow_any_instance_of(Throw).must_receive(:points).and_return(10)
    round = Round.new
    round.do_round
    assert round.instance_variable_get(:@strike)
  end

  def test_do_round_spare
    allow_any_instance_of(Throw).must_receive(:points).and_return(5)
    round = Round.new
    round.do_round
    assert round.instance_variable_get(:@spare)
  end

  def test_do_round_total_points
    allow_any_instance_of(Throw).must_receive(:points).and_return(3)
    allow_any_instance_of(Throw).must_receive(:points).and_return(7)
    round = Round.new
    round.do_round
    assert_equal 10, round.instance_variable_get(:@total_points)
  end
end
