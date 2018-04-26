class Card

  def initialize(value, suit, color)
    @value = value
    @suit = suit
    @color = color
  end

  attr_reader :value, :suit, :color
end
