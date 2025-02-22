module ArmstrongNumbers
  def self.include?(number)
    str = number.to_s.chars
    return str.map{ |e| e.to_i ** str.length }.sum == number
  end
end
