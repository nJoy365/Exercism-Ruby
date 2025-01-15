class Phrase
  attr_reader :phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    count = Hash.new
    words = @phrase.scan(/\b\w+(?:'\w+)?\b/)
    words.each { |word| count[word.downcase] = count[word.downcase].to_i + 1 }
    return count
  end
end