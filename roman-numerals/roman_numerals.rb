class String
  def to_roman
    number = self.to_i
    result = ''
    roman_numerals = {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }

    roman_numerals.each do |value, roman|
      while number >= value
        result += roman
        number -= value
      end
    end

    result
  end
end

class Integer
  def to_roman
    self.to_s.to_roman
  end
end