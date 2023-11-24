=begin
Write a program that ingests a secret message and “encodes” the message by replacing vowels with other characters

Here is our secret code, don’t tell anyone: a = 1, e = 2, i = 3, o = 4, u = 5

Your program should print the encoded message.

Make sure each of these the secret strings below output the correct encoded response, then get the tests to pass.
=end
secret = [
  "I have a secret to share",
  "Is this secure enough for my PASSWORD?",
  "we should be more clever"
].sample
pp secret

# write your program below
=begin
secret = secret.gsub("a", "1").gsub("A", "1") 
secret = secret.gsub("e", "2").gsub("E", "2")
secret = secret.gsub("i", "3").gsub("I", "3")
secret = secret.gsub("o", "4").gsub("O", "4")
secret = secret.gsub("u", "5").gsub("U", "5")
pp secret
=end

#use hash to map each char with num
mapping = {
  'a' => '1', 'e' => '2', 'i' => '3', 'o' => '4', 'u' => '5',
  'A' => '1', 'E' => '2', 'I' => '3', 'O' => '4', 'U' => '5'
}
#loop and sub the char with num
mapping.each { |char, num| 
secret.gsub!(char, num) 
}
pp secret
