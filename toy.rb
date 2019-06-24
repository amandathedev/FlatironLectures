teachers = [
  { name: "Baxter", city: "NYC", topping: "pineapple" },
  { name: "April", city: "NYC", topping: "onion" },
  { name: "Don", city: "NYC", topping: "anchovy" },
]

def teacher_name(array)
  array.map do |person|
    person[:name]
  end
end

p teacher_name(teachers)