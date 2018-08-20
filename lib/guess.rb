require 'pry'
require './lib/card'

class Guess

  attr_reader :response, :card

  def initialize (response, card)
    @response = response
    @card = card
  end

  def correct?
    card_string = card.value + " of " + card.suit
    if card_string == @response
      correct = true
    else
      correct = false
    end
    return correct
  end

  def feedback
    card_string = card.value + " of " + card.suit
    if card_string == @response
      return "Correct!"
    else
      return "Incorrect."
    end
  end

end
