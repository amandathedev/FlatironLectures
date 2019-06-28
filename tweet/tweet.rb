class Tweet
    attr_reader :tweet, :user

    @@all = []

    def self.all
        @@all
    end

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
        Like.new(self, tweet)
    end

    # def liked_tweets
    #     Like.all.select do |like|
    #         like.user == self
    #     end
    # end

end