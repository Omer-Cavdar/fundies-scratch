use context dcic2024
include csv
include data-source
flights_53 = load-table: 
  rownames,dep_time,sched_dep_time,dep_delay,arr_time,sched_arr_time,arr_delay,carrier,flight,tailnum,origin,dest,air_time,distance,hour,minute,time_hour
  source: csv-table-file("flights_sample53.csv", default-options)
  sanitize rownames using num-sanitizer
  sanitize dep_time using num-sanitizer
  sanitize sched_dep_time using num-sanitizer  
  sanitize dep_delay using num-sanitizer
  sanitize arr_time using num-sanitizer
  sanitize sched_arr_time using num-sanitizer
  sanitize arr_delay using num-sanitizer
  sanitize flight using num-sanitizer
  sanitize air_time using num-sanitizer
  sanitize distance using num-sanitizer
  sanitize hour using num-sanitizer
  sanitize minute using num-sanitizer
    
end
check:
  flights_53.row-n(0)["rownames"] is 1
  flights_53.row-n(1)["rownames"] is 2
end
flights_53-tailnum-cl = flights_53.transform-column("tailnum", lam(str :: String):
    if (str == ""):
      "UNKNOWN"
    else:
      str
    end
  end)
flights_53-tailnum-cl-dd-cl = flights_53-tailnum-cl.transform-column("dep_delay", lam(n :: Number):
    if (n < 0):
      0
    else:
      n
    end
  end)
flights_53-tailnum-cl-dd-cl-ad-cl = flights_53-tailnum-cl-dd-cl.transform-column("arr_delay", lam(n :: Number):
    if (n < 0):
      0
    else:
      n
    end
  end)
fun trim(s :: String) -> String:
  doc: "Remove spaces from the given string."
  n = string-length(s)
  if n == 0:
    ""
  else:
    string-replace(s, " ", "")
  end
end
fun hour-converter(n :: Number) -> String:
  doc:"changes the minutes given to HH:MM format"
  hour = n/60
  min = num-modulo(n, 60)
num-to-string(hour) + ":" + num-to-string(min)
end