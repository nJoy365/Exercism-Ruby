class Squares
  def initialize(number)
    if number < 2 then
      @number = [number]
    else
      @number = (1..number).to_a
    end
  end

  def sum_of_squares
    @number.map { |d| d**2}.sum
  end

  def square_of_sum
    @number.sum ** 2
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
#Run options: --verbose --seed 17561
#Fabulous run in 0.002137s, 4210.7234 runs/s, 4210.7234 assertions/s.