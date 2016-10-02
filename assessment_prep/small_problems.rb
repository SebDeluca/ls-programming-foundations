def buy_fruit(array)
  array.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 5], ["bananas", 2]])
