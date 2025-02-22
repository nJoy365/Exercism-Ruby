class PhoneNumber
  def self.clean(number)
    test_case = number.chars.select{ |n| n.is_int?}.join("")
    if test_case.length > 10 then
      if test_case[0] != "1"
        return nil
      end
    else 
      test_case
    end
  end
end

class String
  def is_int?
    self.to_i.to_s == self
  end
end