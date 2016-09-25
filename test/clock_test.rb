require 'test/unit'
require 'clock'

class ClockTest < Test::Unit::TestCase
  def test_1_hour_should_360_clocks
    start_time = Time.new(2016, 11, 14, 20, 0, 0, '+09:00')
    end_time = start_time + (1 * 60 * 60) # plus 1 hour
    clocks = MyGame::Clock.clocks(start_time, end_time)
    assert_equal 360, clocks
  end

  def test_1_hour_and_23_mins_should_498_clocks
    start_time = Time.new(2016, 11, 14, 20, 0, 0, '+09:00')
    end_time = start_time + (1 * 60 * 60 + 23 * 60) # plus 1 hour and 23 mins
    clocks = MyGame::Clock.clocks(start_time, end_time)
    assert_equal 498, clocks
  end

  def test_1_hour_and_23_mins_and_32_seconds_should_501_clocks
    start_time = Time.new(2016, 11, 14, 20, 0, 0, '+09:00')
    end_time = start_time + (1 * 60 * 60 + 23 * 60 + 32) # plus 1 hour and 23 mins and 32 seconds
    clocks = MyGame::Clock.clocks(start_time, end_time)
    assert_equal 501, clocks
  end
end
