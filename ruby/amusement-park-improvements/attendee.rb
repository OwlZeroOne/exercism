class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.

  def has_pass?
    return @pass_id != nil
  end

  def fits_ride?(ride_minimum_height)
    return @height >= ride_minimum_height
  end

  def allowed_to_ride?(ride_minimum_height)
    return self.has_pass? && self.fits_ride?(ride_minimum_height)
  end
end

att = Attendee.new(160)
puts att.has_pass?
att.issue_pass!(1234)
puts att.has_pass?
puts att.fits_ride?(170)
puts att.fits_ride?(150)
puts att.allowed_to_ride?(170)
puts att.allowed_to_ride?(150)
