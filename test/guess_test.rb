require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/card'
require './lib/guess'

class GuessTest < Minitest::Test

  def test_it_exists
    two_clubs = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", two_clubs)
    assert_instance_of Guess, guess
  end

  def test_it_has_response
    two_clubs = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", two_clubs)
    assert_equal "10 of Hearts", guess.response
  end

  def test_it_has_card
    two_clubs = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", two_clubs)
    assert_equal two_clubs, guess.card
  end

  def test_response_is_correct
    two_clubs = Card.new("10", "Hearts")
    guess_1 = Guess.new("10 of Hearts", two_clubs)
    assert guess_1.correct?
    guess_2 = Guess.new("2 of Hearts", two_clubs)
    refute guess_2.correct?
  end

  def test_it_prints_feedback_for_correct
    two_clubs = Card.new("10", "Hearts")
    guess_1 = Guess.new("10 of Hearts", two_clubs)
    puts two_clubs.value + " of " + two_clubs.suit
    guess_2 = Guess.new("2 of Hearts", two_clubs)
    assert_equal "Incorrect.", guess_2.feedback
  end

end
