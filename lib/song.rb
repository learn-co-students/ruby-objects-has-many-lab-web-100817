class Song

  attr_accessor :artist, :name
  @@song_count = 0
  def initialize(name)
    @name = name
    @@song_count += 1

  end

  def self.song_count
    @@song_count
  end

  def artist_name
    return artist.name if artist
    nil
  end

end
