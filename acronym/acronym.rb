module Acronym
  def self.abbreviate(string)
    return string.split(/\W+/).map{|word| word[0].upcase}.join
  end
end