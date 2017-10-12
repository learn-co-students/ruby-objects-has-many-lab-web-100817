class Post

  attr_accessor :title, :author

  def initialize(name)
    @title = name
  end

  def author_name
    if self.author == nil
      nil
    else
      @author.name
    end
  end

end
