class Book

	attr_accessor :name, :pages, :author, :rating

	def initialize(name, pages, author, rating)
		@name = name
		@pages = pages
		@author = author
		@rating = rating
	end

end

first_book = Book.new("Emma", 472, "Jane Austen", 5)
first_book.pages = 300

puts "The current book I am reading is #{first_book.name} by #{first_book.author}.
It is #{first_book.pages} pages long and so far I rate it #{first_book.rating} stars."
