module Port
  # TODO: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    s = city[0,4].upcase
    return s.to_sym
  end

  def self.get_terminal(ship_identifier)
    ship_s = ship_identifier.to_s
    cargo = ship_s[0,3]
    if cargo == "OIL" || cargo == "GAS"
      return :A
    else
      return :B
    end
  end
end

puts Port::IDENTIFIER
puts Port.get_identifier("Edinburgh")
puts Port.get_terminal("GAS123")
puts Port.get_terminal("OIL456")
puts Port.get_terminal("AIR132")