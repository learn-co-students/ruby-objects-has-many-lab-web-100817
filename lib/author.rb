 class Author

  attr_accessor :name
  attr_reader :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post_obj)
    self.posts << post_obj
    post_obj.author = self
    @@post_count += 1
  end

  def add_post_by_title(post)
    new_post = Post.new(post)
    self.posts << new_post
    new_post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

end
