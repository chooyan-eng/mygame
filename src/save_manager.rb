module MyGame
  # module for managing game data
  module DataManager
    def self.save(file_name, data)
      File.open(file_name, 'w') do |f|
        f.puts(data)
      end
    end
  end
end
