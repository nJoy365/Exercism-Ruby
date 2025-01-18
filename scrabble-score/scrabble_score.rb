class Scrabble
  def initialize(letters)
    @letters = letters
  end

  def score
    @letters.chars.sum{ |letter| score_letters(letter.upcase)}
  end
  
  def score_letters(letter)
      case letter
        when "A", "E", "I", "O", "U", "L", "N", "R", "S", "T"
          points = 1
        when "D", "G"
          points = 2
        when "B", "C", "M", "P"
          points = 3
        when "F", "H", "V", "W", "Y"
          points = 4
        when "K"
          points = 5
        when "J", "X"
          points = 8
        when "Q", "Z"
          points = 10
      end
      points
  end
end