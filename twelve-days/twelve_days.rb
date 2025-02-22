module TwelveDays
  DAYS = { 1 => "first", 2 => "second", 3 => "third", 4 => "fourth",
           5 => "fifth", 6 => "sixth", 7 => "seventh", 8 => "eighth",
           9 => "ninth", 10 => "tenth", 11 => "eleventh", 12 => "twelfth" }
  NUMBERS = { 1 => "a", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
              6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
              11 => "eleven", 12 => "twelve" }
  GIFTS = [
                "a Partridge in a Pear Tree",
                "two Turtle Doves",
                "three French Hens",
                "four Calling Birds",
                "five Gold Rings",
                "six Geese-a-Laying",
                "seven Swans-a-Swimming",
                "eight Maids-a-Milking",
                "nine Ladies Dancing",
                "ten Lords-a-Leaping",
                "eleven Pipers Piping",
                "twelve Drummers Drumming"
              ]
  def self.song
    verses(1, 12)
  end

  def self.verses(start, finish)
    (start..finish).map { |i| verse(i) }.join("\n\n") + "\n"
  end

  def self.verse(day)
    "On the #{DAYS[day]} day of Christmas my true love gave to me: #{gifts(day)}."
  end

  def self.gifts(day)
    return GIFTS[day-1] if day == 1

    (1..day).map do |n|
      n == 1 ? "and #{GIFTS[n-1]}" : GIFTS[n-1]
    end.reverse.join(', ')
  end

  
end