require 'pry'
require './lib/card'
require './lib/guess'
require './lib/deck'

class Round

  attr_reader :deck, :guesses, :current_card

  def initialize (deck)
    @deck = deck
    @guesses = []
    @current_card
  end

  def current_card
    current_card = deck.cards[0]
    return current_card
  end

  def record_guess(guess)
    guess_response = "#{guess[:value]} of #{guess[:suit]}"
    new_guess = Guess.new(guess_response, current_card)
    @guesses << new_guess
    # deck.cards.shift
    deck.cards.push(deck.cards.shift)
    return new_guess
  end

  def number_correct
    number_correct = 0
    guesses.each do |guess|
      if guess.correct? == true
        number_correct += 1
      end
    end
    return number_correct
  end

  def percent_correct
    100 * (number_correct / guesses.length.to_f)
  end

end
