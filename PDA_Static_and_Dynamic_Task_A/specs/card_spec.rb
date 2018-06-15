require 'minitest/autorun'
require('minitest/rg')
require_relative '../card.rb'
require_relative '../testing_task_2.rb'

class TestCardGame < Minitest::Test

  def setup
    @card1 = Card.new("Ace",1)
    @card2 = Card.new("Joker",0)
    @cards = CardGame.new(@card1, @card2)
    @cardgame = [@card1, @card2]
  end


  def test_card_suit
    assert_equal("Ace", @card1.suit)
  end

  def test_check_for_ace__true
    result = @cards.check_for_ace(@card1)
    assert_equal(true, result)
  end

  def test_check_for_ace__false
    result = @cards.check_for_ace(@card2)
    assert_equal(false, result)
  end

  def test_highest_card__returns_card
    card = @cards.highest_card(@card1, @card2)
    assert_equal("Ace", card)
  end

  def test_cards_total
    total = @cards.cards_total(@cardgame)
    assert_equal("You have a total of 1", total)
  end


end
