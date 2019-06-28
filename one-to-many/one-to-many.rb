class User
    # attr_reader :username

    def initialize(username)
        @username = username
        @tweets = []
    end

    # Same as attr_reader

    # def username
    #     @username
    # end

    # def tweets
    #     @tweets
    # end

    def post_tweet(message)
        new_tweet = Tweet.new(message, self)
        @tweets << new_tweet
        # use message to create a new tweets
        # tweet also needs to know about this user, who is the one posting -- self will help
    end
end

