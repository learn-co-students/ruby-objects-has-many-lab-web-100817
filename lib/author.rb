class Author

  attr_accessor :name
  attr_reader :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author = self
  end

  def add_post_by_title(title)
    add_post(Post.new(title))
  end

  def self.post_count
    @@post_count
  end

end


# #add_post_by_title
#   takes in an argument of a post title, creates a new post with it and associates the post and author (FAILED - 1)
