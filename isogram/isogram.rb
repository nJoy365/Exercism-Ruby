module Isogram
  def self.isogram?(input)
    input = input.downcase
    hash = Hash.new(0)
    input.each_char do |char|
      if char =~ /[a-z]/
        hash[char] += 1
      end
    end
    hash.each do |key, value|
      return false if value > 1
    end
    return true
  end
end
