class Attendee
  def initialize(height)
    @height = height
    @pass_id = nil
  end

  def height
    return @height
  end

  def pass_id
    return @pass_id
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end
end

# attendee = Attendee.new(160)
# puts "Attendee: #{attendee}"
# puts "Height: #{attendee.height}"
# puts "Pass ID: #{attendee.pass_id}"

# attendee.issue_pass!("12345")
# puts "Pass ID after issuing: #{attendee.pass_id}"

# attendee.revoke_pass!
# puts "Pass ID after revoking: #{attendee.pass_id}"