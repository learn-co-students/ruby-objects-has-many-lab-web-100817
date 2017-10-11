require 'pry'

class Artist

  @@song_count = 0

  def self.song_count
    @@song_count
  end

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    songs << song
    @@song_count += 1
    song.artist = self
  end

  def add_song_by_name(title)
    song = Song.new(title)
    add_song(song)
    song
  end

end
