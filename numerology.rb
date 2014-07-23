puts "Please enter your birthday (MMDDYY format)"
birthdate = gets

def find_path(birthdate)
	math = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i
	if math > 9
		math.to_s
		reduce = math[0].to_i + math[1].to_i
		if reduce > 9
			reduce.to_s
			reduce = reduce[0].to_i + reduce[1].to_i
		end
	end
	return reduce
end

def put_message(numerology_number) 
	case numerology_number
		when 1 then return "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
		when 2 then return "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
		when 3 then return "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
		when 4 then return "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
		when 5 then return "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
		when 6 then return "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
		when 7 then return "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
		when 8 then return "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
		when 9 then return "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
	end
end
path = find_path(birthdate)
message = put_message(path)
puts "Your numerology path is #{path}. #{message}"


