use context dcic2024

#Task1

3 * 3.20 # expected output: 9.6

"oat" + " " + "latte" #expected output: oat latte
string-length("cappuccino") #expected output: 10

#Task2

latte-prices :: Number = 3.2 #variable for latte price

fun order-cost(price-per :: Number, item-num :: Number)-> Number:
  doc: "gets pric per drink and the number of drinks to calculate an order total"
  price-per * item-num #returns the order cost
where:
  order-cost(latte-prices, 3) is 9.6 #since latte price is set to 3.2#
  order-cost(4, 3) is 12 # 3 of a drink that costs 4
end
#Task3
fun discount-rate(num-drinks :: Number)-> Number:
  doc: "gives regular customers dictount rates based on their number of drinks"
  if num-drinks >= 10: #checks the num of drinks is larger or eq to 10
    0.2 # returns 0.2
  else if num-drinks >= 5: #5-9
    0.1 # returns 0.1
  else: # number of drinks 0-4
    0 # returns 0
  end
where:
  discount-rate(10) is 0.2
  discount-rate(9) is 0.1
  discount-rate(5) is 0.1
  discount-rate(4) is 0
end
#Task4
orders = table: customer, drinks, price
  row: "Amira", 2, 3.20
  row: "Ben", 6, 2.80
  row: "Chen", 12, 3.00
  row: "Dara", 1, 3.50
end
orders.build-column("cost", lam(r :: Row): order-cost(r["price"] , r["drinks"])end) #adds a cost column to the table using the order cost function
filter-with(orders, lam(r :: Row): r["drinks"] >= 5end) # filters only customers who order 5 plus drinks only Ben and Chen are left
#Task 5
drinks-list :: List<Number> = orders.get-column("drinks")
var total-drinks :: Number = 0 # will be used to store the total num of drinks
for each(drink from drinks-list): # total-drinks-loop loops through each element
  total-drinks := total-drinks + drink #for each value adds it to the variable and assigns the result as the new variable
end
total-drinks
fold-total-drinks=fold(lam(a, e): a + e end, 0, drinks-list)
fold-total-drinks
check:
  fold-total-drinks is total-drinks
end
# Task 6
data Order:
  | eat-in(drinks :: Number)
  | takeaway(drinks :: Number, own-cup :: Boolean)
end
fun cup-fee(o :: Order) -> Number:
  doc:"takes and order and determines the cup fee"
  cases:
    |is-takeaway(o) and o[own-cup] => 0.25
    |other => 0
  end
  end

  