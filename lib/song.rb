
class Song
  attr_accessor :artist
  attr_reader :name

  def initialize(name)
    @name = name
    @artist = nil
  end

  def artist_name
    if @artist != nil
      @artist.name
    else @artist
    end
  end


end
