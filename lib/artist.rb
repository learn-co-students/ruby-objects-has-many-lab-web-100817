class Artist

@@song_count = 0

attr_accessor :name, :artist, :artist_name

def initialize(name)
  @name = name
  @songs = []

end

def songs
  @songs
end

def add_song(song)
  @songs << song
  song.artist = self
  @@song_count +=1
end

def add_song_by_name(song_name)
  new_song = Artist.new(song_name)
  new_song.artist_name = self.name
  new_song.artist = self
  @songs << new_song
  @@song_count +=1
end

def self.song_count
  @@song_count
end

end
