require 'pathname'

module MyGame
  # module for managing game data
  module SaveManager
    DATA_DIR = 'data'.freeze

    # save last played time
    def self.save_last_play_time
      save 'last_play_time.txt', Time.new.strftime('%Y%m%d%H%M%S')
    end

    # save given data into given file at data/
    def self.save(file_name, data)
      Pathname.pwd.join(DATA_DIR, file_name).write(data)
    end
  end
end
