require 'pry'
require './lib/card'
require './lib/guess'

class Deck

  attr_reader :cards

  def initialize (cards = [])
    @cards = cards
  end

  def count
    cards.length
  end

  def sort
    return cards if cards.length <= 1
    swapped = true
    while swapped do
      swapped = false
      0.upto(cards.length - 2) do | i|
        current_card = cards[i]
        next_card = cards[i + 1]
        if cards[i].card_id > cards[i + 1].card_id
          cards[i], cards[i + 1] = cards[i + 1], cards[i]
          swapped = true
        end
      end
    end
    cards
  end

end

  card_1 = Card.new("4","Hearts")
  card_2 = Card.new("Jack", "Clubs")
  card_3 = Card.new("5", "Diamonds")
  card_4 = Card.new("Ace", "Spades")
  card_5 = Card.new("Ace", "Diamonds")
  deck = Deck.new([card_1, card_2, card_3, card_4, card_5])
  p deck.sort
