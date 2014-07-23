def addition(number_one, number_two)
	if (number_one.class != Fixnum || number_two.class != Fixnum)
		puts "Error: Please enter two numbers."
		return
	end
	puts number_one + number_two
end

addition(1827432,2324)
