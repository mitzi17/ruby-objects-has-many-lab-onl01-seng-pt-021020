class Author
  
  @@post_count = [ ]
  
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = [ ]
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end

  def self.post_count
    @@post_count
    save
  end
end
