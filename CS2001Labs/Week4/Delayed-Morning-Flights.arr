use context dcic2024
include csv
include data-source

flights = load-table:
  rownames :: Number,
  dep_time :: Number,
  sched_dep_time :: Number,
  dep_delay :: Number,
  arr_time :: Number,
  sched_arr_time :: Number,
  arr_delay :: Number,
  carrier:: String,
  flight :: Number,
  tailnum :: String,
  origin :: String,
  dest :: String,
  air_time :: Number,
  distance :: Number,
  hour :: Number,
  minute :: Number,
  time_hour :: String
  source: csv-table-file("flights.csv", default-options)
  sanitize rownames using num-sanitizer
  sanitize dep_time using num-sanitizer
  sanitize sched_dep_time using num-sanitizer
  sanitize dep_delay using num-sanitizer
  sanitize arr_time using num-sanitizer
  sanitize sched_arr_time using num-sanitizer
  sanitize arr_delay using num-sanitizer
  sanitize carrier  using string-sanitizer
  sanitize flight  using num-sanitizer
  sanitize tailnum  using string-sanitizer
  sanitize origin  using string-sanitizer
  sanitize dest using string-sanitizer
  sanitize air_time  using num-sanitizer
  sanitize distance  using num-sanitizer
  sanitize hour  using num-sanitizer
  sanitize minute  using num-sanitizer
  sanitize time_hour using string-sanitizer
end

fun is_delayed_departure(row :: Row):
  doc: "checks if the flight in the given row has dep_delay value greater then or equal to 30"
  if row["dep_delay"] >= 30:
    true
  else:
    false
  end
where:
  is_delayed_departure(flights.row-n(0)) is false
  is_delayed_departure(flights.row-n(56)) is true
end

delayed-flights-after-noon = flights.filter(lam(row :: Row):(row["dep_delay"] >= 30) and lam(row :: Row): (12 > Num(substring(11,13(row["time_hour"]))))))