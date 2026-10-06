import file("lab2-support.arr") as support

## Input Output Test

Input1 = "Hello World!"

support.encryptor1(Input1)
support.encryptor2(Input1)
support.encryptor3(Input1)
support.encryptor4(Input1)
support.encryptor5(Input1)
support.encryptor6(Input1)
support.encryptor7(Input1)
support.encryptor8(Input1)
support.encryptor9(Input1)
support.encryptor10(Input1)

#| Outputs for Input 1:
   
"Hello World!Hello World!Hello World!Hello World!Hello World!"
   
"Hell"
   
"Hello World!"
   
"HellHellHellHellHell"
   
"Hfllp Wprld!"
   
"hello wold!"
   
12
   
"Hello World!!!!Hello World!!!!Hello World!!!!"
   
72
   
"hfllhfllhfllhfllhfll"
|#
Input2 = "Omer"

support.encryptor1(Input2)
support.encryptor2(Input2)
support.encryptor3(Input2)
support.encryptor4(Input2)
support.encryptor5(Input2)
support.encryptor6(Input2)
support.encryptor7(Input2)
support.encryptor8(Input2)
support.encryptor9(Input2)
## Support.encryptor10(Input2) Throws an error

#| 
   Outputs for input 2:
   "OmerOmerOmerOmerOmer"
"Omer"
"Omer"
"OmerOmerOmerOmerOmer"
"Pmfr"
"ome"
4
"Omer!!!Omer!!!Omer!!!"
79
 and an error for the 10th func:
   substring: max index 4 is larger than the string length 3|#

Input3 = "Cavdar"

support.encryptor1(Input3)
support.encryptor2(Input3)
support.encryptor3(Input3)
support.encryptor4(Input3)
support.encryptor5(Input3)
support.encryptor6(Input3)
support.encryptor7(Input3)
support.encryptor8(Input3)
support.encryptor9(Input3)
support.encryptor10(Input3)

#| Output for input 3:
"CavdarCavdarCavdarCavdarCavdar"
"Cavd"
"Cavdar"
"CavdCavdCavdCavdCavd"
"Cbvdbr"
"cavda"
6
"Cavdar!!!Cavdar!!!Cavdar!!!"
67
"cbvdcbvdcbvdcbvdcbvd"
   
|#


#|
   Encyrepted Func Functionalities:
   1. Repeats the String given 5 times
   2. Shortens the String to first 4 letters
   3.Prints the string as is
   4.Repeats the first 4 letters of the string given 5 times
   5.Changes the Vowels to the next closest consonant
   6. It makes the whole string lower case and cuts the 10th charachter or the last one if the string is shorter then 10 charcters.
   7. Returns the numver of charachters as integer.
   8. adds "!!!" to the end of the String and repeats it 3 times
   9. 
   10.
|#

# encryptor Func 1: Repeats the String given 5 times
fun encryptor1(s :: String):
  string-repeat(s , 5)
end
# encryptor Func 2: Shortens the String to first 4 letters
fun encryptor2(s :: String):
  string-substring(s, 0,4)
end

#encryptor Func 3: Prints the string as is
fun encryptor3(s:: String):
  s
end

# encryptor func 4: Repeats the first 4 letters of the string given 5 times

fun encryptor4(s:: String):
  encryptor1(encryptor2(s))
  
end

#encryptor func 5:Changes the Vowels to the next closest consonant
fun encryptor5(s :: String):
  string-replace(string-replace(string-replace(string-replace(string-replace(string-replace(string-replace(string-replace(string-replace(string-replace(s,"a","b") ,"e", "f"),"o","p"),"u","v"),"i","j")),"A","B"),"E", "F"),"O", "P"),
  
  

## Test Field:
encryptor1(Input3)
encryptor2(Input3)
encryptor3(Input3)
encryptor4(Input3)
 