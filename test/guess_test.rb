require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/card'
require './lib/guess'

class GuessTest < Minitest::Test

  def test_it_exists
    two_clubs = Card.new("2", "Clubs")
    guess = Guess.new("2 of Clubs", two_clubs)
    assert_instance_of Guess, guess
  end

  def test_it_has_response
    two_clubs = Card.new("2", "Clubs")
    guess = Guess.new("2 of Clubs", two_clubs)
    assert_equal "2 of Clubs", guess.response
  end

  def test_it_has_card
    two_clubs = Card.new("2", "Clubs")
    guess = Guess.new("2 of Clubs", two_clubs)
    assert_equal two_clubs, guess.card
  end

  def test_response_is_correct
    skip
    two_clubs = Card.new("2", "Clubs")
    guess_1 = Guess.new("2 of Clubs", two_clubs)
    assert guess_1.correct?
    guess_2 = Guess.new("2 of Hearts", two_clubs)
    refute guess_2.correct?
  end

  def test_it_prints_feedback_for_correct
    skip
    two_clubs = Card.new("2", "Clubs")
    guess_1 = Guess.new("2 of Clubs", two_clubs)
    assert_equal "Correct!", guess_1.feedback
    guess_2 = Guess.new("2 of Hearts", two_clubs)
    asser_equal "Incorrect!", guess_2.feedback
  end

end
