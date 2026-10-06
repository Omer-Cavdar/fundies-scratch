use context starter2024

planets = table: planet :: String , distance :: Number
  row: "Mercury" , 0.39
  row: "Venus", 0.72
  row: "Earth", 1
  row: "Mars" , 1.52
  row: "Jupiter" , 5.2
  row: "Saturn" , 9.54
  row: "Uranus" , 19.2
  row:"Neptune" , 30.06
end

planetslist = extract planet from planets end 
# converts the planet string collum of the planets table into a list
distancelist = extract distance from planets end 
# converts the distance number collum of the planets table into a list 
mars = list: (planetslist(3) ; distancelist(3))
marsdisctance = mars(1)
