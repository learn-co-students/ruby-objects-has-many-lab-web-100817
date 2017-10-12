class Post

   attr_accessor :author, :title

  def initialize(post)
    @title = post
  end

  def author_name
    if self.author == nil
      nil
    else
      self.author.name
    end
  end


end
