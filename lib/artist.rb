class Artist

  attr_accessor :name
  attr_reader :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def add_song_by_name(song)
    add_song(Song.new(song))
  end

  def self.song_count
    @@song_count
  end

end
