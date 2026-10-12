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

fun is_long_flight(row :: Row) -> Boolean:
  doc: "Checks if the Distance in the given row is greater or equal to 1500"
  if row["distance"] >= 1500:
    true
  else:
    false
  end
    where:
  is_long_flight(flights.row-n(0)) is false
  is_long_flight(flights.row-n(14)) is true
  end
long-flights = flights.filter(is_long_flight)
long-flights
long-flights-ordered = long-flights.order-by("air_time", false)
long-flights-ordered
long-flights-ordered.row-n(0)["carrier"]
long-flights-ordered.row-n(0)["origin"]
long-flights-ordered.row-n(0)["dest"]


    
  