require 'pry'
class Artist
  @@song_count = 0

  attr_accessor :name, :songs, :song_name

  def initialize(name)
    @name = name
    @songs = []

  end

  def self.song_count
    @@song_count
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    # binding.pry
    # song_name.artist = self
    # binding.pry
    song.artist = self
    # binding.pry
    @@song_count +=1
  end

  def self.songs(song)
    song = self.new
    @songs << song
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count +=1
  end

end


true
