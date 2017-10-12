class Artist
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
    song
  end

  def add_song(song)
    songs << song
    song.artist = name
  end

  def songs
    @songs
  end

  def self.song_count
    @songs.count
  end

end
