class Post
  @@post_count=0
  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@post_count += 1
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end

  def self.post_count
    @@post_count
  end

end
