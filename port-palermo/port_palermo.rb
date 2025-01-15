module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    return city[0,4].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    id = ship_identifier.to_s[0,3]
    if id == "OIL" || id == "GAS"
      return :A
    else
      return :B
    end
  end
end
