=begin
Write a program that receives any amount of numbers separated by spaces. The program should then print the sum of the odd numbers.

For example, if the input was ["9", "5", "4"], the program should only sum the “9” and the “5”, because those are odd numbers, and print

"14"
=end
inputs = [
  ["9", "5", "4"],
  ["20", "40", "60"],
  ["1", "3", "19"]
]
numbers = inputs.sample
pp numbers
# write your program below

#empty array to store odd numbers
odd_num = []

#loop through the numbers array and if there is odd, add it to odd number array
numbers.each { |num|
  if num.to_i.odd?
    odd_num.push(num.to_i)
  end
}

sum = 0

#loop through the odd number array
odd_num.each { |num|
  #add the numbers
  sum += num
}

pp sum
