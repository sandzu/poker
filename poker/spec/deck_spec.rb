require 'deck'
require 'rspec'

RSpec.describe Deck do
  subject(:deck) { Deck.new }
  let(:card) { double("card") }

  describe "#initialize" do

    it "initializes with an array of cards" do
      expect(deck.cards).to be_an(Array)
    end

    it "starting deck has 52 cards" do
      expect(deck.cards.length).to eq(52)
    end

    it "contains cards with unique suits and values" do
      simple_cards = [ ]
      until deck.cards.empty?
        current_card = deck.deal
        suit = current_card.suit
        value = current_card.value
        simple_cards << [suit, value]
      end
      expect(simple_cards.uniq).to eq(simple_cards)
    end

    it "deck contains card objects" do
      expect(deck.cards[0]).to be_a(Card)
    end

    it "deals a card" do
      expect(deck.deal).to be_an(Card)
    end

    it "doesnt put discarded cards back in the deck" do
      before = deck.cards.length
      deck.take_discarded(card)
      after = deck.cards.length
      expect(after).to eq(before)
    end



  end



end
