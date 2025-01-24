class Anagram
  def initialize(text)
    @letters = text.downcase
  end

  def match(list)
    list.filter do |word| 
    word.downcase.chars.tally == @letters.chars.tally &&
    word.downcase != @letters
    end
  end
end