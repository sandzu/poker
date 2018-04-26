require "rspec"
require "hand"

RSpec.describe Hand do

  let(:ace) {double("ace", value: 14, suit: :s)}
  let(:king) {double("king", value: 13, suit: :s)}
  let(:queen) {double("queen", value: 12, suit: :s)}
  let(:jack) {double("jack", value: 11, suit: :s)}
  let(:ten) {double("ten", value: 10, suit: :s)}

  let(:trash) {double("trash", value: 2, suit: :d)}
  let(:card) {double("card", Class: Card)}
  let(:deck) {double("deck", deal_cards: [card,card,card,card,card])}

  subject(:hand){Hand.new(deck.deal_cards)}


  describe "#initialize" do
    it "initializes a hand" do
      expect(Hand.new(deck.deal_cards)).to be_a(Hand)
    end

    it "has five cards" do
      expect(hand.cards_in_hand.length).to eq(5)
    end
  end

  context "recognizes different hands" do

    describe "#straight?" do
      before(:each){
        royal_flush = [ace, king, queen, jack, ten].shuffle
        almost = [ace,king,queen,jack,trash].shuffle
        rf = Hand.new(royal_flush)
        al = Hand.new(almost)
      }
      it "recognizes a straight when the hand has a straight" do
        # royal_flush = [ace, king, queen, jack, ten].shuffle
        # h = Hand.new(royal_flush)
        expect(rf.straight?).to be true
      end

      it "returns false if isnt straight" do
        # almost = [ace,king,queen,jack,trash].shuffle
        # h = Hand.new(almost)
        expect(al.straight?).to be false
      end
  end
  end

  describe "#flush" do
    before(:each) do #TODO FIGURE OUT HOW TO GET THIS BEFORE EACH THING WORKING
      royal_flush = [ace, king, queen, jack, ten].shuffle
      almost = [ace,king,queen,jack,trash].shuffle
      rf = Hand.new(royal_flush)
      al = Hand.new(almost)
    end
    it "recognizes a flush when the hand has a flush" do
      # royal_flush = [ace, king, queen, jack, ten].shuffle
      # h = Hand.new(royal_flush)
      expect(rf.flush?).to be true
    end

    it "returns false if isnt flush" do
      # almost = [ace,king,queen,jack,trash].shuffle
      # h = Hand.new(almost)
      expect(al.flush?).to be false
    end
  end

  describe "#straight_flush" do
    before(:each){
      royal_flush = [ace, king, queen, jack, ten].shuffle
      almost = [ace,king,queen,jack,trash].shuffle
      rf = Hand.new(royal_flush)
      al = Hand.new(almost)
    }
    it "recognizes a straight flush" do
      # royal_flush = [ace, king, queen, jack, ten].shuffle
      # h = Hand.new(royal_flush)
      expect(rf.flush?).to be true
    end
  end



end
