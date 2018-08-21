require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/card'
require './lib/guess'
require './lib/deck'

class DeckTest < Minitest::Test

  def test_it_exists
    test_deck = Deck.new()
    assert_instance_of Deck, test_deck
  end

  def test_it_has_cards
    two_clubs = Card.new("2", "Clubs")
    three_hearts = Card.new("2", "Hearts")
    ace_spades = Card.new("2", "Spades")
    test_deck = Deck.new([two_clubs, three_hearts, ace_spades])
    expected = [two_clubs, three_hearts, ace_spades]
    assert_equal expected, test_deck.cards
  end

  def test_it_can_count_cards
    two_clubs = Card.new("2", "Clubs")
    three_hearts = Card.new("2", "Hearts")
    ace_spades = Card.new("2", "Spades")
    test_deck = Deck.new([two_clubs, three_hearts, ace_spades])
    assert_equal 3, test_deck.count
  end
  def test_it_can_sort_cards_from_low_to_high
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("Jack", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    card_4 = Card.new("Ace", "Spades")
    card_5 = Card.new("Ace", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3, card_4, card_5])
    expected = [card_1, card_3, card_2, card_5, card_4]
    assert_equal expected, deck.sort
  end

end
