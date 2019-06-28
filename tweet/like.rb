class Like
    
    @@all = []

    def initialize(user, tweet)
        @user = user
        @tweet = tweet
        @@all << self
    end

end