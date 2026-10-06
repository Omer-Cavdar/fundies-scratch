use context starter2024

fun clock_tick_sec(s :: Number) -> Number:
  doc: "takes an input of a valid second in a min (0-59) and returns the next second"
  if (s == 59):
    0
  else:
    s + 1
  end
where:
  clock_tick_sec(0) is 1
  clock_tick_sec(21) is 22
  clock_tick_sec(59) is 0
end