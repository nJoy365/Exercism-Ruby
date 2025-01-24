class SpiralMatrix
  def initialize(size)
    @size = size
  end

  def matrix
    mtx = Array.new(@size) { Array.new(@size) { |i| i = 0}}
    spiral_recursive(@size).each_with_index{ |(x,y), i| 
      mtx[x][y] = i + 1
    }
    mtx
  end

  def spiral_recursive(size, x=0, y=0)
    return [] if size.zero?
    return [[x,y]] if size == 1

    right = (size - 1).times.map { |i| [x, y + i]}
    down = (size - 1).times.map { |i| [x + i, y + size-1]}
    left = (size - 1).times.map { |i| [x + size-1, y + size - 1 - i]}
    up = (size - 1).times.map { |i| [x + size-1-i, y]}

    [*right, *down, *left, *up] + spiral_recursive(size-2, x + 1, y + 1)
  end
end


