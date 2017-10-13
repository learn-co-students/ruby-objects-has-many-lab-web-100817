

class Post
  attr_accessor :author
  attr_reader :title

  def initialize(title)
    @title = title
    @author = nil
  end

  def author
    if @author != nil
      @author
    else @author
    end
  end

  def author_name
    if @author != nil
      @author.name
    else @author
    end
  end

end
