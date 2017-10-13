class Post


def initialize(title)
  @title = title
end

attr_accessor :title, :author, :name, :author_name

  def author_name
    if self.author == nil
      return nil
    else
      self.author.name
    end
  end

end
