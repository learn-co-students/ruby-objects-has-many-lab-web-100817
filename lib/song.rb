require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    if artist
      artist.name
    end
  end
  
end
