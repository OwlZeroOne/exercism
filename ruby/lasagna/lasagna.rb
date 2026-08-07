class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40

  def remaining_minutes_in_oven(actual_minutes_in_oven)
    return EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
  end

  def preparation_time_in_minutes(layers)
    return 2 * layers
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    puts "#{number_of_layers} layers, #{actual_minutes_in_oven} minutes in oven"

    prep_time = preparation_time_in_minutes(number_of_layers)
    remaining_time = remaining_minutes_in_oven(actual_minutes_in_oven)

    puts "Preparation time: #{prep_time} minutes, Atual time: #{actual_minutes_in_oven} minutes"
    puts "Total time: #{prep_time + remaining_time} minutes"
    
    return prep_time + actual_minutes_in_oven
  end
end

lasagna = Lasagna.new
lasagna.total_time_in_minutes(number_of_layers: 3, actual_minutes_in_oven: 20)
