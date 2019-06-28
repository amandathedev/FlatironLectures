class Tweet
    attr_reader :message, :user

    @@all = []

    def initialize(username)
        @username = username
        @liked_tweets =  []
    end

    def post_tweet(message)
        Tweet.new(message, self)
    end

    def tweets
        Tweet.all.select do |tweet|
            tweet.user == self
        end
    end

    def like_tweet(tweet)
        @like_tweets << tweet
    end


end