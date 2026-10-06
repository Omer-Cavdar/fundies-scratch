use context starter2024

fun rock-paper-scissors(p1 :: String, p2 :: String) -> String:
  doc: "returns the result of a given rock paper and scicors game with 2 players"
  
  if ((string-to-lower(p1) == "rock") and (string-to-lower(p2) == "rock")):
    "tie"
  else if ((string-to-lower(p1) == "rock") and (string-to-lower(p2) == "paper")):
    "player 2"
  else if ((string-to-lower(p1) == "rock") and (string-to-lower(p2) == "scissors")):
    "player 1"
  else if ((string-to-lower(p1) == "paper") and (string-to-lower(p2) == "paper")):
    "tie"
  else if ((string-to-lower(p1) == "paper") and (string-to-lower(p2) == "scissors")):
    "player 2"
  else if ((string-to-lower(p1) == "paper") and (string-to-lower(p2) == "rock")):
    "player 1"
  else if ((string-to-lower(p1) == "scissors") and (string-to-lower(p2) == "scissors")):
    "tie"
  else if ((string-to-lower(p1) == "scissors") and (string-to-lower(p2) == "rock")):
    "player 2"
  else if ((string-to-lower(p1) == "scissors") and (string-to-lower(p2) == "paper")):
    "player 1"
  else:
    "invalid answer"
  end
where:
  rock-paper-scissors("Rock", "Paper") is "player 2"
  rock-paper-scissors("rock", "Rock") is "tie"
  rock-paper-scissors("Boat", "scissors") is "invalid choice"
  rock-paper-scissors("scissors", "paper") is "player 1"
end