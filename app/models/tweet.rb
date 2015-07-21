class Tweet
  
  ALL_TWEETS = []
  
  attr_accessor :username, :content
  def initialize(username, content)
    @username = username
    @content = content
    @created_at = Time.now
    ALL_TWEETS.push(self)
  end
  
  def self.all
    ALL_TWEETS
  end

end