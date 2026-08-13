class BirdCount
  LAST_WEEK = [0, 2, 5, 3, 7, 8, 4]

  def self.last_week
    return LAST_WEEK
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end

  def yesterday
    @birds_per_day[-2]
  end

  def total
    @birds_per_day.sum
  end

  def busy_days
    @birds_per_day.count { |number| number >= 5 }
  end

  def day_without_birds?
    @birds_per_day.any? { |number| number == 0 }
  end
end

bc = BirdCount.new([2,5,0,7,4,1])
puts bc.yesterday
puts bc.total
puts bc.busy_days
puts bc.day_without_birds?
