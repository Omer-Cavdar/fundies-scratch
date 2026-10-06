use context starter2024

check:
  true is true
  not(true) is false
  
  #and
  true and true is true
  true and false is false
  false and false is false
  
  (4 == 2) and (3 > 1) is false
  ((4 * 2) == 8) and (2 < 1) is true
  
  #or
  true or false is true
  false or false is true
  true or false is false
end


fun choose-hat(c :: Number):
  doc: "determines appropriate head gear, with above 27C a sun hat, below nothing"
  spy:
    c
  end
  if c > 27:
    "sun hat"
  else:
    "no hat"
  end
where:
  choose-hat(35) is "sun hat"
  choose-hat(22) is "no hat"
  choose-hat(27) is "sun hat"
end

ask:
  | x == 0 then: 1
  | x > 0 then: x * 2
    otherwise: x * -1
end

