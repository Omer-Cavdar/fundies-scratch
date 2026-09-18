use context starter2024
a = 'Hello World '

b = a + ' '

string-length(b)
string-repeat(b, 5)

"CS" + "2000"
#convert all chars in the string to uppercase
string-to-upper('hello cs2000!') 
string-toupper('hello cs2000!')
#to convert all chars in the text to lowercase .)
string-to-lower('WELCOME TO CS200O')

# creating an other string by cropping the main string from a starting and an ending index
string-substring('Welcone to London',0, 7)

sampleString = "Je pense donc je suis"

string-contains(sampleString, 'Je')
string-contains(sampleString, 'jE')

nonstandartString = 'lETS SAY I FORGET TO CLOSE MY CAPS LOCK AND MY NAME IS oMER'



string-contains(nonstandartString,'omer')

string-contains(string-to-lower(nonstandartString),'omer')

circle(30, "solid", "green")

rectangle(80,40,"solid", "red")

triangle(50, "solid", "cyan")

overlay(triangle(30, "solid", "turquoise"), rectangle(80,40,"solid", "red"))

# overlay -> ((first image), (second image))

# above -> ((first image), (second image))

# below -> ((first image), (second image))

# beside ((first image), (second image))
rectangle(50,40, "outline", "magenta")

overlay-align("center","center", regular-polygon(52,6,"outline","white"), overlay-align("center", "center", text("STOP", 20, "white"),regular-polygon(50,6,"Solid","red")))
#Stopsign using overlay-align("position horizontal", "position vertical", image1, image2) and standart-polygone(size, number of sides, "outline or solid", "color")