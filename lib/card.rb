require 'pry'

class Card

  attr_reader :value, :suit

  def initialize (value, suit)
    @value = value
    @suit = suit
  end

  def card_value_ids
    card_value_ids = { "2" => 2, "3" => 6, "4" => 10, "5" => 14, "6" => 18, "7" => 22, "8" => 26, "9" => 30, "10" => 34, "Jack" => 38, "Queen" => 42, "King" => 46, "Ace" => 50 }
  end

  def card_suit_ids
    card_suit_ids = { "Clubs" => 0, "Diamonds" => 1, "Hearts" => 2, "Spades" => 3 }
  end

  def card_id
    card_id = card_value_ids[@value] + card_suit_ids[@suit]
  end

end
