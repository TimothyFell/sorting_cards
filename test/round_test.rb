require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/card'
require './lib/guess'
require './lib/deck'
require './lib/round'

class RoundTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of Round, round
  end

  def test_it_has_deck
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal deck, round.deck
  end

  def test_it_has_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal [], round.guesses
  end

  def test_it_has_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal card_1, round.current_card
  end

  def test_it_can_record_guesses
    # skip
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    guess = Guess.new("3 of Hearts", card_1)
    round = Round.new(deck)
    assert_instance_of Guess, round.record_guess({value: "3", suit: "Hearts"})
    assert_equal guess.response ,round.guesses.last.response
    # assert the first card in deck is now the old second card from deck.
    assert_equal card_2, round.current_card
  end

  def test_it_counts_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    guess = Guess.new("3 of Hearts", card_1)
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    assert_equal 1, round.guesses.count
  end

  def test_it_gives_feedback
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    guess = Guess.new("3 of Hearts", card_1)
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    assert_equal "Correct!",round.guesses.first.feedback
  end

  def test_it_can_count_correct_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    assert_equal 1, round.number_correct
  end

  def test_it_can_calc_percent_correct
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    guess = Guess.new("3 of Hearts", card_1)
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "Jack", suit: "Diamonds"})
    assert_equal 50, round.percent_correct
  end

end
