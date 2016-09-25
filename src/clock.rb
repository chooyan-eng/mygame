module MyGame
  # module to manage clock
  module Clock
    TICK_SEC = 10
    TICK_SEC.freeze

    def self.clocks(start_time, end_time)
      to_clock_count(end_time - start_time)
    end

    def self.to_clock_count(time_delta)
      (time_delta / TICK_SEC).to_i
    end
  end
end
