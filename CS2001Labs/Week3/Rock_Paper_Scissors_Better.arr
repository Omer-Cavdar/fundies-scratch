use context starter2024
fun rock-paper-scissors(p1 :: String, p2 :: String) -> String:
  doc: "returns the result of a rock paper and scissors game between 2 players"
  # converts the parameters to lower case so the function is not case sensitive
  lP1 = string-to-lower(p1)
  lP2 = string-to-lower(p2)
  # checks for all possible conditions
  ask:
    | (lP1 == lP2) then: "tie"
    | ((lP1 == "rock") and (lP2 == "paper")) then: "player 2"
    | ((lP1 == "rock") and (lP2 == "scissors")) then: "player 1"
    | ((lP1 == "paper") and (lP2 == "scissors")) then: "player 2"
    | ((lP1 == "paper") and (lP2 == "rock")) then: "player 1"
    | ((lP1 == "scissors") and (lP2 == "paper")) then: "player 1"
    | ((lP1 == "scissors") and (lP2 == "rock")) then: "player 2"
    | otherwise: "invalid choice"
  end
where:
  rock-paper-scissors("Rock", "Paper") is "player 2"
  rock-paper-scissors("rock", "Rock") is "tie"
  rock-paper-scissors("Boat", "scissors") is "invalid choice"
  rock-paper-scissors("scissors", "paper") is "player 1"
end
