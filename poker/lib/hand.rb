
class Hand

  attr_reader :cards_in_hand
  def initialize(card_array)
    @cards_in_hand = card_array
  end

  # def straight_flush?
  #   @cards_in_hand.all?{|card| card.suit == cards_in_hand[0].suit}
  #   #TODO finish

  def flush?
    @cards_in_hand.all?{|card| card.suit == cards_in_hand[0].suit}
  end

  def straight?
    values = cards_in_hand.map { |card| card.value }
    values.sort == (values.min..values.max).to_a
  end


end
