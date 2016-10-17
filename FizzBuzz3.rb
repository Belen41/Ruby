i = 1
while i <= 100 do 
	string = i.to_s.to_i
	if i % 3 == 0 && i % 5 == 0 
		puts "FizzBuzz" 
	elsif i % 3 == 0
		puts "Fizz" 
	elsif i % 5 == 0
		puts "Buzz"
	elsif string[0] == 1
		puts "Bang"
	else
		puts i 
	end
	i += 1
end