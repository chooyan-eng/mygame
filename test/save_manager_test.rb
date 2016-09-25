require 'test/unit'
require '../src/save_manager.rb'

class TestSample < Test::Unit::TestCase
  def test_greeting
    MyGame::DataManager.save('sampledata.txt', 'hello sample data!')
  end
end
