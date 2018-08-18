require 'pry'

class Guess

  attr_reader :response, :card

  def initialize (response, card)
    @respone = response
    @card = card
  end

end
