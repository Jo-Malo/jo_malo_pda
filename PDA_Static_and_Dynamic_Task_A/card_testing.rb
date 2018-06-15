# require( 'minitest/autorun' )

require_relative('card.rb')

# class FunctionsTest < MiniTest::Test


  def checkforAce(card)
    if card.value = 1
      return true
    else
      return false
    end
  end

  def highest_card(card1, card2)
  if card1.value > card2.value
    return card.name
  else
    card2
  end
end
# end
#extra end, dif isntead of def and comma missing in arguments

def self.cards_total(cards)
  total
  for card in cards
    total += card.value
    return "You have a total of" + total
  end
end
