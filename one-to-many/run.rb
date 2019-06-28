require_relative "one-to-many"
require_relative "tweet"

matcha = User.new("matcha_mom")
matcha.post_tweet("loving this matcha")

p matcha