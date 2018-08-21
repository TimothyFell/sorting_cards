require 'pry'

class Card

  attr_reader :value, :suit

value = "3"
suit = "Diamonds"
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

card_1 = Card.new("4","Hearts")
card_2 = Card.new("Jack", "Clubs")
card_3 = Card.new("5", "Diamonds")
card_4 = Card.new("Ace", "Spades")
card_5 = Card.new("Ace", "Diamonds")
p card_1.card_id
p card_2.card_id
p card_3.card_id
p card_4.card_id
p card_5.card_id
