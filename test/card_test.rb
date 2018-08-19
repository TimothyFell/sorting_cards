require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/card'

class CardTest < Minitest::Test

  def test_it_exists
    two_clubs = Card.new("2", "Clubs")
    assert_instance_of Card, two_clubs
  end

  def test_it_has_value
    two_clubs = Card.new("2", "Clubs")
    assert_equal "2", two_clubs.value
  end

  def test_it_has_suit
    two_clubs = Card.new("2", "Clubs")
    assert_equal "Clubs", two_clubs.suit
  end

  #blargidy blarg

end
