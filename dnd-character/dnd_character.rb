class DndCharacter
  attr_reader :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :hitpoints
  BASE_HITPOINTS = 10

  def attributes
    %i[strength dexterity constitution intelligence wisdom charisma]
  end
  def self.modifier(score)
    return ((score - 10) / 2).floor
  end

  def initialize
    attributes.each do |attribute| 
      instance_variable_set("@#{attribute}", Dice.roll(4, 6).max(3).sum)
    end
    @hitpoints = BASE_HITPOINTS + DndCharacter::modifier(constitution)
  end
end


module Dice
  def self.roll(times = 1, sides)
    result = []
    for _ in 1..times
      result.append(rand(1..sides))
    end
    return result
  end
end
