module Luhn
  def self.valid?(string)
    test_string = string.gsub(/[[:digit:]\-]+/,"")
    test_string = test_string.gsub(/\s+/, '')
    if test_string.length > 0 then return false end
    string = string.gsub(/\s+/, '')
    if string.length <= 1 then return false end
    result = ""
    (string.length-1).downto(0) do |i| 
      if i.odd? then
        result += string[i]
      else
        result = (string[i].to_i * 2).to_s + result
      end

    
    end
    puts "Original: #{string} "
    puts "Modified: #{result} "
    result = result.split('').map(&:to_i).sum
    puts "Final: #{result} "
    return result % 10 == 0
  end
end
