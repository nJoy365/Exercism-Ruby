class Grains
  def self.square(num)
    raise ArgumentError if num > 64 || num <= 0 
    (0..num).map{ |n| if n < 2 then @val = n else @val *= 2 end}
    return @val
  end

  def self.total
    self.square(64)*2-1
  end

end

puts Grains.total