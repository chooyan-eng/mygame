require 'test/unit'
require 'entity/player'

class PlayerTest < Test::Unit::TestCase
  def test_initial_stamina_should_be_100
    player = MyGame::Entity::Player.new(100)
    assert_equal 100, player.current_stamina
  end
  
  def test_absorb_10_stamina_should_be_90
    player = MyGame::Entity::Player.new(100)
    player.absorb_stamina 10
    assert_equal 90, player.current_stamina
  end
  
  def test_healing_filled_stamina_change_nothing
    player = MyGame::Entity::Player.new(100)
    player.heal_stamina 20
    assert_equal 100, player.current_stamina
  end
end
