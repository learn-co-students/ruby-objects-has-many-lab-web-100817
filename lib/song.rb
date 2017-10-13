class Song

  def initialize(name)
    @name = name

  end


  attr_accessor :name, :title, :artist

  def artist_name

    if self.artist == nil
      return nil
    else
      self.artist.name
  end
end


end
