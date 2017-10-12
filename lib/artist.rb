class Artist

  @@song_count = 0

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song_name)
    self.songs << song_name
    song_name.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.add_song(song)
  end

  def self.song_count
    @@song_count
  end

end
