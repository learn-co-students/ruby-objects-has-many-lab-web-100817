require 'pry'

class Post

  attr_accessor :title, :author, :author_name

  def initialize(title)
    @title = title
  end

  def author_name
    if author
      author.name 
    end
  end

end
