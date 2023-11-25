=begin
Write a program that:

Takes a String
Counts the total number of letters in the given String
Counts the total number of spaces in the given String
Counts the total numbers of digits in the given String
and prints the information out
Example output for string = "here 12 plus 25":

"Number of letters in the string is: 8"

"Number of spaces in the string is: 3"

"Number of digits in the string is: 4"

Hint: It may be helpful to use the advanced gsub techniques with the Regexp class
=end
strings = [
  "here 12 plus 25",
  "puzzle number 04 ",
  " "
]
string = strings.sample
pp string
# write your program below

#get only the letters, no numbers 
letter_only = string.gsub(/[^a-z]/i, "")

#get only the numbers, no letters
digit_only = string.gsub(/[^0-9]/, "")

#split the string into array of each characters
spaces = 0
string.split("").each { |char|
  #if there is space, count it
  if char == " "
    spaces += 1
  end
}

pp "Number of letters in the string is: #{letter_only.split("").count}"
pp "Number of spaces in the string is: #{spaces}"
pp "Number of digits in the string is: #{digit_only.split("").count}"
