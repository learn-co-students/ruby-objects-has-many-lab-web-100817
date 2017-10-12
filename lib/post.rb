class Post

  attr_accessor :author, :title
  @@post_count = 0
  def initialize(title)
    @title = title
    @@post_count += 1

  end

  def self.post_count
    @@post_count
  end

  def author_name
    return author.name if author
    nil
  end

end
