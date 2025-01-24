module TwelveDays
  DAYS = { 1 => "first", 2 => "second", 3 => "third", 4 => "fourth",
           5 => "fifth", 6 => "sixth", 7 => "seventh", 8 => "eighth",
           9 => "ninth", 10 => "tenth", 11 => "eleventh", 12 => "twelfth" }
  NUMBERS = { 1 => "a", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
              6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
              11 => "eleven", 12 => "twelve" }
  GIFTS = [
                "a Partridge in a Pear Tree",
                "Turtle Doves",
                "French Hens,",
                "Calling Birds,",
                "Gold Rings,",
                "Geese-a-Laying,",
                "Swans-a-Swimming,",
                "Maids-a-Milking,",
                "Ladies Dancing,",
                "Lords-a-Leaping,",
                "Pipers Piping,",
                "Drummers Drumming,"
              ]
  def self.song
    verses(1, 24)
  end

  def self.verses(start, finish)
    (start..finish).map { |i| verse(i) }.join("\n")
  end

  def self.verse(day)
    gifts = GIFTS.first(day).join(",")
    "On the #{DAYS[day]} day of Christmas my true love gave to me: #{NUMBERS[day]} #{gifts}"
  end

  
end