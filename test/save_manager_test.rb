require 'test/unit'
require 'save_manager'

class SaveManagerTest < Test::Unit::TestCase
  def test_save_sample_file
    MyGame::SaveManager.save('sampledata.txt', 'hello sample data!')
  end

  def test_save_last_play_time
    MyGame::SaveManager.save_last_play_time
  end
end
