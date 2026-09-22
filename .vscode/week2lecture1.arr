use context starter2024

orangeTriangle = triangle(35, "solid","orange")
rSideL = 40
sColor = "blue"
Square = rectangle(rSideL, rSideL, "solid", sColor)
Square2 = rectangle(40,40,"solid", "blue")

cColor = "yellow"
cRadius = 10
rLength = 80
rWidth = 40
rColor = "black"
blackRectangle = rectangle(rLength, rWidth, "solid", rColor)
yellowCircle = circle(cRadius, "Solid", cColor)
image = above(yellowCircle, blackRectangle)
image
image2= above(beside(yellowCircle, yellowCircle), blackRectangle)
image2

starSideLength = 20
flagW = 150
flagL = 100
flagColor = "red"
starColor = "white"
circle1Color = "red"
circle1Raduis = 26
circle2Color = "White"
circle2Raduis = 30

circle1 = circle(circle1Raduis, "solid",circle1Color )
circle2 = circle(circle2Raduis, "solid", circle2Color)
crescent = overlay-align("right", "center", circle1,circle2)
flagbase= rectangle(flagW, flagL, "solid", flagColor)
whiteStar = star(starSideLength, "solid", starColor)
flag = overlay-align("center","center", beside(crescent,whiteStar),flagbase)
flag