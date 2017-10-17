class Artist
  attr_accessor :name

@@song_count = 0

  def initialize(title)
    @title = title
    @songs = []
  end

  def songs
    @songs
  end

  def name
    @title
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end



  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end



  def self.song_count
    @@song_count
  end
end
