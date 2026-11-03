use context dcic2024
week-temps = [list: 28, 31, 34, 29, 30, 26, 32]
co2 = [list: 411.65, 414.21, 416.41, 418.53, 421.08, 424.61, 427.35 ] 

fun hot-days(temps :: List<Number>) -> List<Number>:
  doc:"keeps the temperatures of 30 or more"
  cases(List) temps:
    | empty => empty
    | link(f , r) =>
      if f >= 30:
        link(f, hot-days(r))
      else:
        hot-days(r)
  end
 end
where:
  hot-days(week-temps) is [list: 31, 34, 30, 32]
  hot-days([list: 29 ,25]) is [list: ]
  hot-days([list: ]) is [list: ]
end

#selection by postion: how much did CO2 rise each year
fun yearly-rise(levels :: List<Number>) -> List<Number>:
  doc: "how much each level rose from the one before it"
  cases (List) levels:
    | empty => empty
    | link(f, r) =>
      cases(List) r:
        | empty => empty 
        | link(next-year, rest) => link(next-year - f, yearly-rise(r))
      end
  end
where:
  yearly-rise([list : 411.65, 414.21, 416.421]) is [list: 2.56, 2.211]
  yearly-rise([list: 400]) is [list: ]
  yearly-rise([list: ]) is [list: ]
end

# relaxe domain: hottest day

fun hotest(temps :: List<Number>)->Number:
  doc:"the highest temperature in a list; not defined for an empty list"
  cases (List) temps:
    | empty => raise("no temperatures given")
    | link(f, r) =>
      cases (List) r:
        | empty => f
        | else => num-max(f, hotest(r))
      end
  end
where:
  hotest(week-temps) is 34
  hotest([list: -3, -1, -5]) is -1
  hotest(empty) raises"no temperatures given"#
end
# an accumulatoe
fun rain-acc(total:: Number, days :: List<Number>) -> List<Number>:
  cases(List) days:
    |empty => empty
    |link(f,r) =>
      new-total = total + f
      link(new-total, rain-acc(new-total, r))
  end 
end

fun rain-so-far(days :: List<Number>) -> List<Number>:
  doc: "the rain fro far, in mm, at the end of each day"
  rain-acc(0, days)
where:
  rain-so-far([list: 2,0,5,1]) is [list:2,2,7,8]
  rain-so-far([list: ]) is [list: ]
  rain-so-far([list: 5]) is [list: 5]
end

#Class Exercises
fun more-than-five(s :: List<String>) -> List<String>:
  doc: "Filters out elemnts with less then 5 charachters"
  cases(List) s:
    | empty => empty
    | link(f, r) => 
      if string-length(f) > 5:
        link(f, more-than-five(r))
      else:
        more-than-five(r)
      end
  end
where: 
  more-than-five([list: "give", "give me", "love", "given"]) is [list:"give me"]
end

fun my-avarage(nl :: List<Numbers>) -> Number:
  for each (n from nl):
    
    