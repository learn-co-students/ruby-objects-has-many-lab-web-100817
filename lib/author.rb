class Author

  @@post_count = 0

  attr_accessor :name, :author, :title, :author_name

def initialize(name)
  @name = name
  @posts = []

end

def posts
  @posts
end

def add_post(post)
  @posts << post
  post.author = self
  @@post_count +=1
end

def add_post_by_title(post_title)
  new_post = Author.new(post_title)
  new_post.author = self
  new_post.title = post_title
  new_post.author_name = self.name
  @posts << new_post
  @@post_count +=1
end

def self.post_count
  @@post_count
end

end
