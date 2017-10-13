class Song
  @@song_count = 0
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@song_count += 1
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

  def self.song_count
    @@song_count
  end

end
