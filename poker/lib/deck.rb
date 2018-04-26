require_relative "card"

class Deck
  attr_reader :cards

  def initialize
    @discarded = []
    @cards = [ ]
    [:c,:h,:d,:s].each do |suit|
      (2..14).each do |value|
        [:s,:c].include?(suit) ? color = :black : color = :red
        @cards << Card.new(value, suit, color)
      end
    end
    @cards.shuffle!
  end

  def deal
    @cards.pop
  end
  # 
  # def deal_cards(num)
  #   res = [  ]
  #   num.times {res << self.deal}
  #   res
  # end

  def take_discarded(card)
    discarded.push(card)
  end




  private

  attr_accessor :discarded

end
