class Author
  def self.post_count
    @@post_count
  end
  attr_accessor :name
  attr_reader :posts

  def initialize(name)
    @name = name
    @posts = []
    @@post_count = Post.post_count
  end

  def add_post(post)
    posts << post
    post.author = self
  end

  def add_post_by_title(title)
    title = Post.new(title)
    self.add_post(title)
  end

end
