require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/card'

class CardTest < Minitest::Test

  def test_it_exists
    hearts_10 = Card.new("10", "Hearts")
    assert_instance_of Card, hearts_10
  end

  def test_it_has_value
    hearts_10 = Card.new("10", "Hearts")
    assert_equal "10", hearts_10.value
  end

  def test_it_has_suit
    hearts_10 = Card.new("10", "Hearts")
    assert_equal "Hearts", hearts_10.suit
  end

  def test_value_hash_returns_integer
    hearts_10 = Card.new("10", "Hearts")
    actual = hearts_10.card_value_ids[hearts_10.value]
    assert_equal 34, actual
  end

  def test_suit_hash_returns_integer
    hearts_10 = Card.new("10", "Hearts")
    actual = hearts_10.card_suit_ids[hearts_10.suit]
    assert_equal 2, actual
  end

  def test_card_can_create_unique_card_id
    hearts_10 = Card.new("10", "Hearts")
    spades_king = Card.new("King", "Spades")
    assert_equal 36, hearts_10.card_id
    assert_equal 49, spades_king.card_id
  end

end
