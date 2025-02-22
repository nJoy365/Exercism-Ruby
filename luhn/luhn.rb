class Luhn
  def self.valid?(txt)
    txt = txt.gsub(/\s+/, "")
    return false if txt.length <= 1
    return false if txt.match?(/[a-zA-Z]/)
    val = txt.reverse.chars.each_with_index.sum{ |v , i| 
      v = v.to_i
      if i.odd? then
        v *= 2
        if v > 9 then
          v -= 9
        end
      end
      v
    }
    return val % 10 == 0 ? true : false
  end
end

puts " #{Luhn.valid?("095 245 88")}"