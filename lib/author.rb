class Author

  @@post_count = 0

  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post_name)
    self.posts << post_name
    post_name.author = self
    @@post_count += 1
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    self.add_post(post)
  end

  def self.post_count
    @@post_count
  end

end
