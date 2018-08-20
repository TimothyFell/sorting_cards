require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/card'

class CardTest < Minitest::Test

  def test_it_exists
    two_clubs = Card.new("10", "Hearts")
    assert_instance_of Card, two_clubs
  end

  def test_it_has_value
    two_clubs = Card.new("10", "Hearts")
    assert_equal "10", two_clubs.value
  end

  def test_it_has_suit
    two_clubs = Card.new("10", "Hearts")
    assert_equal "Hearts", two_clubs.suit
  end

end
