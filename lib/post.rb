require 'pry'
class Post
  attr_accessor :post, :author,:title
  def initialize(title)
    @title = title
  end
  def author_name
    self.author.name unless !self.author
  end
end
