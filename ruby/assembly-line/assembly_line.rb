class IllegalSpeedError < StandardError
end

class AssemblyLine
  CARS_PER_SPEED_UNIT = 221

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    success = 0
    if @speed <= 4 && @speed >= 1
      success = 1
    elsif @speed <= 8
      success = 0.9
    elsif @speed == 9
      success = 0.8
    elsif @speed == 10
      success = 0.77
    else
      raise IllegalSpeedError, "Speed must be between 1 and 10"
    end

    return @speed * CARS_PER_SPEED_UNIT * success
  end

  def working_items_per_minute
    rate = self.production_rate_per_hour
    return (rate / 60).floor
  end
end

al = AssemblyLine.new(6)
puts al.production_rate_per_hour
puts al.working_items_per_minute
