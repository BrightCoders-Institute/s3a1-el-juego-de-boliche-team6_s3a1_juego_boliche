require 'minitest/autorun'
require_relative 'throw'

class TestThrow < MiniTest::Test
  def test_points_generation
    throw_instance = Throw.new
    assert_includes 1..10, throw_instance.instance_variable_get(:@points)
  end

  def test_do_throw_with_t
    allow_any_instance_of(Kernel).must_receive(:gets).and_return('t')
    output = capture_io { Throw.new.do_throw }.join
    assert_match(/Pines down: \d+/, output)
  end

  def test_do_throw_without_t
    allow_any_instance_of(Kernel).must_receive(:gets).and_return('other')
    output = capture_io { Throw.new.do_throw }.join
    assert_match(/You didn't press 't', you won't get any points/, output)
  end
end
