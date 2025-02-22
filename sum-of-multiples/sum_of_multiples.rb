class SumOfMultiples
  def initialize(*numbers)
    
    @numbers = numbers
  end

  def to(number)
    if @numbers.include?(0) then return 0 end
    if number <= 1 then return 0 end
    multiples = []
    @numbers.each { |n| (0..number-1).each { |e| e % n == 0 ? multiples.append(e) : next}}
    return multiples.uniq.sum
  end
end

sm = SumOfMultiples.new(4,6)
puts sm.to(15)