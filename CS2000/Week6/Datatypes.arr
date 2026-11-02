use context dcic2024

data Post:
    post(username :: String, caption :: String, likes:: Number, shares :: Number) #constructor
end

post-1 = post("@news" , "Articale sea ice hits a record low" , 1250 , 340)
post-2 = post("@cityfarm" , "Our rooftop garden this week" , 85 , 4)
post-3 = post("@CS2000" , "Welcome to week 6!" , 400 , 32)

feed :: List<Post> = [list: post-1, post-2, post-3]
feed

# Func over a Post
fun engagement(p :: Post) -> Number:
  doc: "Likes plus shares for a post"
  p.likes + p.shares
where:
  engagement(post-1) is 1590
  engagement(post("@hello","hello this is James Bond", 0 , 0)) is 0
endF
fun is-viral(p :: Post) -> Boolean:
  doc:"checks if the given post has more then a 1000 likes"
  p.likes > 1000
where:
  is-viral(post-1) is true
  is-viral(post-2) is false
end

#Conditional Data

#priority: Variants with no fields

data Priority:
  |low
  |med
  |high
end
task-1-Priority = low
task-2-Priority = med
task-3-Priority = high
check:
  is-Priority(task-1-Priority) is true
  is-low(task-1-Priority) is true
  is-med(task-1-Priority) is false
end

#Conditional data types nested
data Task:
  |task(desc :: String, prio :: Priority)
  |note(desc :: String) 
end

task-1 = task("Buy groceries", med)
task-2 = task("Pay concuil tax", high)
note-1 = note("PDI exam is on October 30th")

task-1.prio

#desc
fun describe(t :: Task) -> String:
  cases (Task) t:
    |task(d,p) => "Task: " + d
    |note(d) => "Note: " + d
  end
where:
  describe(task-1) is "Task: Buy groceries"
  describe(note-1) is  "Note: PDI exam is on October 30th"
end

describe(task-1)
describe(note-1)

fun is-urgent(t :: Task) -> Boolean:
  doc:"true for a task with high prio, notes are never urgent"
  cases(Task) t:
    | task(d, p) => is-high(p)
    | else => false
  end
where:
  is-urgent(task-2) is true
  is-urgent(task-1) is false
  is-urgent(note-1) is false 
end

data Temp:
  |celsius(deg :: Number)
  |fahrenheit(deg :: Number)
  |kelvin(deg :: Number)
end
temp-1 = celsius(5)
temp-2 = fahrenheit(42)
temp3 = kelvin(0)
fun to-celsius(t :: Temp)-> Number:
  cases(Temp) t:
    |fahrenheit(n) => (5 / 9) * (n - 32)
    |kelvin(n) => n - 273.15
    |celsius(n) => n
  end

end
