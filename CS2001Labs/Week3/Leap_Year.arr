use context starter2024

fun find_leap_year(y :: Number) -> Boolean:
  doc: "if the given year is a leap year returns true if not returns false"
 #checks if the reminder is 0 when we dived the given year by 4
  if (num-modulo(y , 4) == 0): 
    true # returns true 
  else: # if not divisable by 4 returns fals
     false
  end
where:
  find_leap_year(40) is true
  find_leap_year(2040) is true
  find_leap_year(2021) is false
  find_leap_year(1993) is false
  
end
  
  
