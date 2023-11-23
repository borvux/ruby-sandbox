=begin
Suppose that your program has to deal with the object inside the variable some_random_input. If the object is:
a String: downcase it and print it
a Time: figure out the day of the week, downcased, and print
an Integer: figure out whether it’s odd or even and print (where X is the number)
"X is odd", or
"X is even"
a Symbol: downcase it and print it
nil: print "no object provided"
true: print "you may pass"
false: print "you may not pass"
a Hash: print the list of keys within the Hash, as an Array.


Think Fast prints '[:city, :state, :zip]' input is a Hash
=end
unpredictable_inputs = [
  "Hello!",
  Time.now,
  rand(100),
  :GOODBYE,
  nil,
  true,
  false,
  { :city => "Chicago", :state => "IL", :zip => 60654 }
]

some_random_input = unpredictable_inputs.sample

# write your program below
if some_random_input.class == String
  pp "#{some_random_input.downcase}"

elsif some_random_input.class == Time
	pp "#{some_random_input.strftime("%A").downcase}"

elsif some_random_input.class == Integer
  #check if the random int is even or not
	if some_random_input.even?
    pp "#{some_random_input} is even"
  else
    pp "#{some_random_input} is odd"
  end

elsif some_random_input.class == Symbol
	pp some_random_input.downcase

elsif some_random_input.class == NilClass
	pp "nothing"

elsif some_random_input.class == TrueClass
	pp "You may pass"

elsif some_random_input.class == FalseClass
	pp "You may not pass"

elsif some_random_input.class == Hash
  #create empty array
	hash_array = []
  #loop over the hash and only get the keys into the empty array
  some_random_input.each do |keys, values|
    hash_array.push(keys)
  end
  pp hash_array
end
