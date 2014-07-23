class Family

	def set_traits (first_name, last_name, gender, age)
		@fname = first_name
		@lname = last_name
		@gender = gender
		@age = age
	end

	def set_name (first, last)
		@fname = first
		@lname = last
	end

	def set_gender (gender)
		@gender = gender
	end

	def set_age (age)
		@age = age
	end

	def get_full_name
		return "#{@fname} #{@lname}"
	end

	def get_first_name
		return @fname
	end

	def get_last_name
		return @lname
	end

	def get_gender
		return @gender
	end

	def get_age
		return @age
	end
end

class Parent < Family 

	def set_job (occupation)
		@job = occupation
	end

	def get_job
		return @job

end

class Child < Family

	def set_school
		case
			when @age < 22
				@school = "College"
			when @age < 19
				@school = "High School"
			when @age < 15
				@school = "Middle School"
			when @age < 12
				@school = "Elementary School"
			when @age < 5
				@school = "Pre-School"	
			else
				@school = "Out of School"
		end
	end

	def get_school
		return @school
	end
end

