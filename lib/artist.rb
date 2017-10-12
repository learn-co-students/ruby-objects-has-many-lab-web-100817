class Artist
  def self.song_count
    @@song_count
  end
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
    @@song_count = Song.song_count
  end

  def add_song(song)
    songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    name = Song.new(name)
    self.add_song(name)
  end

end
