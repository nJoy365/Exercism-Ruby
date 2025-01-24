class Triangle
  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    @sides.uniq.length == 1 && valid_triangle?
  end

  def isosceles?
    @sides.uniq.length <= 2 && valid_triangle?
  end

  def scalene?
    @sides.uniq.length == 3 && valid_triangle?
  end

  def valid_triangle?
    
    t1 = @sides[0] + @sides[1] >= @sides[2]
    t2 = @sides[0] + @sides[2] >= @sides[1]
    t3 = @sides[1] + @sides[2] >= @sides[0]
    t1 && t2 && t3 && @sides.none?(0)
  end
end