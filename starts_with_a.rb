def starts_with_a(array)
  array.select do |x|
    x.start_with?("a")
  end
end

array = ["apple", "pear", "face", "champagne", "palm tree", "aardvark", "pineapple"]

p starts_with_a(array)