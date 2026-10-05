use context starter2024

#| 1. T-Shirt Shop
Calculating Cost
You sell custom T-shirt designs for £12 each. However, each design requires a £3 setup fee.
Write an expression to calculate the total cost for 5 identical T-shirts for a custom design.
Then, write a second expression for 7 identical T-shirts for a design.
   Compare the results.|#

3 + (5 * 12) # -> Write an expression to calculate the total cost for 5 identical T-shirts for a custom design.
3 + (7 * 12) # -> Then, write a second expression for 7 identical T-shirts for a design.
(3 + (7 * 12)) - (3 + (5 * 12)) # -> the diffrence between 7 shirts and 5 shirsy

#| Rectangular Poster
You also print posters. A client wants a 420 by 594mm A2 poster. The price is based on the perimeter of the poster times £0.10p.
First, compute the perimeter with an expression (remember perimeter = 2 * (width + height)).
Then, multiply that perimeter by 0.10 to find the cost.
   What happens if you forget parentheses around (width + height)?  |#

# Perimeter
2 * (420 + 594)
#Cost
2 * (420 + 594) * 0.1

# What happes if you forget the parentheses

#| 2 * 420 + 594 # -> The pyret complier throws the following error: The * and + operations are at the same grouping level. Add parentheses to group the operations, and make the order of operations clear. |#

#| 2. String Surprises
Goal: Experiment with strings.

Saving a Tagline
Your T-shirt shop's tagline is: "Designs for everyone!"
Type it into Pyret as a string.
Now omit one of the quotes and see the error.
   Fix the error so your string prints correctly. |#

"Designs for everyone!"

#| If you omit one of the quotes then the following error is thrown ->
   
is not finished; you may be missing closing punctuation. If you intended to write a multi-line string, use ``` instead of quotation marks. |#
 
#| Colour Inventory
You keep track of colours as strings. For instance: "red", "blue", "gold".
What happens if you try to + them (e.g. "red" + "blue")?
         Reflect: + works on both numbers and strings. What happens if you do 1 + "blue"? |#
"red" 
"blue" 
"gold"
"red" + "blue"
#|
   1 + "blue" throws the following error definitions://:49:0-49:10
50
1 + "blue"
The left side was:

1
The right side was:

"blue"
The + operator expects to be given:
two Numbers, or
two Strings
   since we are trying to add two different types of varaiable an integer and a string in this case." |#

 #| 3. Make a Traffic Light
Goal: Practice layering shapes.

Frame

Start with a solid black rectangle that is tall and narrow (e.g., rectangle(40, 100, "solid", "black")). This will be the traffic light's body.
Lights

Overlay three coloured circles (red, yellow, green) on top of that rectangle, spaced in a vertical stack.
You may do this by carefully using above with each circle and overlaying them onto the rectangle.
Alternatively, overlay them one by one in the correct positions using functions like overlay-xy.
Challenge

Can you add a small rectangular "pole" at the bottom?
         How might you use above or beside to position the pole? |#
      
   
overlay-align("center", "bottom" , circle(15, "solid", "red"), overlay-align("center", "top", circle(15,"solid", "green"), overlay-align("center", "center", circle(15, "solid", "yellow"), rectangle(40, 100, "solid", "black"))))
## Challange Pole at the bottom

   
above(overlay-align("center", "bottom" , circle(15, "solid", "red"), overlay-align("center", "top", circle(15,"solid", "green"), overlay-align("center", "center", circle(15, "solid", "yellow"), rectangle(40, 100, "solid", "black")))), rectangle(20,40, "solid" , "black"))

#| Goal: A rectangle with width 50 and height 20, solid black
rectangle(50, "solid", 20, "black")
|#
rectangle(50, 20,"solid", "black")
# the order of the arguments were wrong

#circle(30, solid, "red")

circle(30, "solid", "red") #-> the type of the second argument was wrong it needed to be a stringx

#| 5. Create a Flag or Shield
Goal: Experiment more with images.

Flag Design

Invent a simple flag using at least three shapes.
For instance, many flags have stripes (rectangles) above or beside each other, or shapes overlaid in the center.
Example steps:
Make one large rectangle as the background.
Overlay a smaller shape (circle, star, or rectangle) in the upper left.
Possibly add a vertical stripe on the right side.
Shield Variation

Alternatively, make a shield shape (maybe a rotated square to get a diamond) overlaid with a circle or star.
Try out rotate(45, square(100, "solid", "gray")) to get a diamond shape.
Layer shapes on top of it for an emblem.
Share

Show your neighbor.
   If time allows, label your shapes with text (e.g., overlay(text("Go!", 20, "black"), your-shield)).|#

overlay-align("center","center",regular-polygon(10,8, "Solid","Blue") ,overlay-align("center","center",circle(20,"outline","white"),rectangle(80,50,"solid","orange")))