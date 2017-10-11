class Song

  attr_accessor :title, :artist

  def initialize(title)
    @title = title
  end

  def name
    self.title
  end

  def artist_name
    self.artist.name if self.artist
  end

end
