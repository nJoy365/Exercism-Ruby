class Transpose
  def self.transpose(input)
    return "" if input == ""
    b = []
    input = input.split("\n")
    max = input.max_by { |e| e.length}.length
    input = input.map(&:chars)
    while b.length < max
      b << input.map { |e| e.shift}
      #input = input.reject { |e| e.empty?}
    end
    b = b.map { |e| e.each_with_index.map{ |char, i| char == nil ? " " : char}.join }.join("\n")
    return b[-1] == " " ? b.chop : b
  end
end

