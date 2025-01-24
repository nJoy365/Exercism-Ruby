class Pangram
  def self.pangram?(sentence)
    alphabet = ("a".."z").to_a
    alphabet.filter { |letter| sentence.downcase.chars.include?(letter) }.length == 26
  end
end