module Blackjack
  def self.parse_card(card)
    case card
      when "ace" then 11
      when "one" then 1
      when "two" then 2
      when "three" then 3
      when "four" then 4
      when "five" then 5
      when "six" then 6
      when "seven" then 7
      when "eight" then 8
      when "nine" then 9
      when "ten", "jack", "queen", "king" then 10
      else 0
    end
  end

  def self.card_range(card1, card2)
    first_card = parse_card(card1)
    second_card = parse_card(card2)
    case first_card + second_card
      when 4..11 then "low"
      when 12..16 then "mid"
      when 17..20 then "high"
      when 21 then "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    player_card1 = parse_card(card1)
    player_card2 = parse_card(card2)
    player_sum = player_card1 + player_card2
    d_card = parse_card(dealer_card)
    player_range = card_range(card1, card2)
    @result = "SOMETHING WENT WRONG"
    if card1 == "ace" && card2 =="ace" then @result = "P" end #Split
    if player_sum == 21 && d_card < 10 then @result = "W" end #Win BJ
    if player_sum == 21 && d_card >= 10 then @result = "S" end #Stand
    if player_range  == "high" then @result = "S" end #Stand
    if player_range == "mid" && d_card >= 7 then @result = "H" end #Hit
    if player_range == "mid" && d_card < 7 then @result = "S" end #Stand
    if player_range == "low" then @result = "H" end #Hit
    return @result
  end
end
