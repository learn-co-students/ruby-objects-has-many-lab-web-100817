require 'pry'

class Artist
  attr_accessor :name, :songs
  attr_reader :song_count

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_name)
    @songs << song_name
    song_name.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song_name = Song.new("#{song_name}")
    self.add_song(song_name)
    song_name.artist = self
  end

  def self.song_count
    @@song_count
  end

end
