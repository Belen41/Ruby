i = 1
while i <= 100 do 
	string = i.to_s.to_i
	result = ""
	if i % 3 == 0 && i % 5 == 0 then puts result << "FizzBuzz" end
	if i % 3 == 0 then puts result << "Fizz" end
	if i % 5 == 0 then puts result << "Buzz"
	else puts i
	end
	i += 1
end