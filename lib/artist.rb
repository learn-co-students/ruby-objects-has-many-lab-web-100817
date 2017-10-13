require 'pry'
class Artist
  attr_accessor :name,:songs
  @@song_count=0
  def initialize(name)
    @name=name
    @songs=[]
  end
  def add_song(name)
    name.artist=self
    self.songs << name
    @@song_count+=1
  end

  def add_song_by_name(name)
    self.add_song(Song.new(name))
  end

  def self.song_count
    # binding.pry
    @@song_count
  end

end
