require 'pry'
require './lib/card'

class Guess

  attr_reader :response, :card, :correct

  def initialize (response, card)
    @response = response
    @card = card
    @correct
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
      return "Incorrect!"
    end
  end

end
