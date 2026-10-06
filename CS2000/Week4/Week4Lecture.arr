use context dcic2024
orders = table: time, amount
  row: "08:00" , 10.50
  row: "09:30" , 5.75
  row: "10:15" , 8.00
  row: "11:00" , 3.95
  row: "14:00" , 4.95
  row: "16:45" , 7.95
end

fun is-high-value(o :: Row) -> Boolean:
  if (o["amount"] >= 8.0):
    true
  else:
    false
  end
where:
  is-high-value(orders.row-n(1)) is false
  is-high-value(orders.row-n(2)) is true
end
