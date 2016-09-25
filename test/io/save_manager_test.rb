require 'test/unit'
require 'save_manager'

class TestSample < Test::Unit::TestCase
  def test_greeting
    MyGame::DataManager.save('sampledata.txt', 'hello sample data!')
  end
end
