

class Author
  attr_accessor :name, :posts
  attr_reader :post_count

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(new_post)
    @posts << new_post
    new_post.author = self
    @@post_count += 1
  end

  def add_post_by_title(new_post_title)
    new_post_title = Post.new("#{new_post_title}")
    self.add_post(new_post_title)
    new_post_title.author = self
  end

  def self.post_count
    @@post_count
  end

end
