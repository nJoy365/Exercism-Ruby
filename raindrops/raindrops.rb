class Raindrops
  def self.convert(raindrop)
    str = ""
    str += "Pling" if raindrop % 3 == 0
    str += "Plang" if raindrop % 5 == 0
    str += "Plong" if raindrop % 7 == 0
    if str.length == 0
      return raindrop.to_s
    else
      return str
    end
  end
end