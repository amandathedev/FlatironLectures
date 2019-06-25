def delicious(hash)
  array = []
  hash.each do |k, v|
    if v == "delicious"
      array.push(k)
    end
  end
  array
end


foods = {"pie" => "delicious", "broccoli" => "not delicious",
    "carrots" => "not delicious", "apples" => "delicious",
    "peanut butter" => "delicious"}

    puts delicious(foods)
