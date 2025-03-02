require 'rspec'
require './lib/card'
require './lib/deck'

RSpec.describe Deck do 
  it "exists" do 
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]
    deck = Deck.new(cards)  

    expect(deck.cards).to eq([card1, card2, card3])

    expect(card1).to be_an_instance_of(Card)
    expect(card2).to be_an_instance_of(Card)
    expect(card3).to be_an_instance_of(Card)

    expect(deck.cards).to eq([card1, card2, card3])

  end 
  it '#rank of card at index location' do 

    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]
    deck = Deck.new(cards)  
    

    expect(deck.cards).to eq([card1, card2, card3])

    expect(deck.cards).to eq([card1, card2, card3])
    expect(deck.cards.find_index(card1)).to eq(0)
    expect(deck.cards.find_index(card2)).to eq(1)
    expect(deck.cards).to eq([card1, card2, card3])

    expect(card1.rank).to eq(12)
    expect(deck.rank_of_card_at(0)).to eq(12)
    expect(deck.rank_of_card_at(2)).to eq(14)
  end 

  it 'tests #high ranking cards' do 
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]
    deck = Deck.new(cards)  

    expect(deck.cards).to eq([card1, card2, card3])
    
    expect(deck.high_ranking_cards).to eq([card1, card3])
  

  end 

  it 'tests percent high ranking cards' do 
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]
    deck = Deck.new(cards) 
    expect(deck.percent_high_ranking).to eq(66.67)

  end 

  it 'a card can be removed' do 
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]
    deck = Deck.new(cards) 

    expect(deck.cards).to eq([card1, card2, card3])
    deck.remove_card

    expect(deck.cards).to eq([card2, card3])

    expect(deck.high_ranking_cards).to eq([card3])


    expect(deck.percent_high_ranking).to eq(50.0)

   
  end 
  it 'creates and adds a new card to the deck' do 
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]
    deck = Deck.new(cards) 
    deck.remove_card
    card4 = Card.new(:club, '5', 5)
    deck.add_card(card4)

    expect(deck.cards).to eq([card2, card3, card4])
    expect(deck.high_ranking_cards).to eq([card3])
    expect(deck.percent_high_ranking).to eq(33.33)



  end 

end 


  
