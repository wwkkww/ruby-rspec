class Deck
  def self.build  # self <= defined class method
    # business logic here to build whole bunch of cards
  end
end

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build # <= class method
  end
end

RSpec.describe CardGame do
  it 'can only implement class methods that are defined on a class' do
    deck_klass = class_double('Deck', build: ['Ace', 'Queen']).as_stubbed_const

    expect(deck_klass).to receive(:build)
    subject.start
    expect(subject.cards).to eq(['Ace', 'Queen']) 
  end
end
