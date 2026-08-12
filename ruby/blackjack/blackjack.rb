module Blackjack
  class ValueOutOfRangeError < StandardError
  end

  LOW = (4..11)
  MID = (12..16)
  HIGH = (17..20)

  STAND = 'S'
  HIT = 'H'
  SPLIT = 'P'
  WIN = 'W'

  def self.parse_card(card)
    case card
    when "two" then return 2
    when "three" then return 3
    when "four" then return 4
    when "five" then return 5
    when "six" then return 6
    when "seven" then return 7
    when "eight" then return 8
    when "nine"  then return 9
    when "ten" then return 10
    when "jack", "queen", "king" then return 10
    when "ace" then return 11
    else return 0
    end
  end

  def self.card_range(card1, card2)
    c1 = self.parse_card(card1)
    c2 = self.parse_card(card2)
    case c1 + c2
    when LOW
      return "low"
    when MID
      return "mid"
    when HIGH
      return "high"
    when 21
      return "blackjack"
    else
      raise ValueOutOfRangeError.new("Undefined operation for card sum #{c1 + c2} > 21...")
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    dealer_value = self.parse_card(dealer_card)

    if card1 == "ace" and card2 == "ace"
      return SPLIT
    end

    sum_range = self.card_range(card1, card2)

    case sum_range
    when 'low'
      return HIT
    when 'mid'
      if dealer_value >= 7
        return HIT
      else
        return STAND
      end
    when 'high'
      return STAND
    when 'blackjack'
      if dealer_value < 10
        return WIN
      else
        return STAND
      end
    else
      raise ValueOutOfRangeError.new("Undefined operation for #{sum_range}")
    end
  end
end

# puts Blackjack.parse_card("five")
# puts Blackjack.card_range("ace", "ace")