class Blog

	attr_accessor :blog_content

	def initialize 
		@creation_time = Time.now
		puts "Please enter the title of your blog here."
		@blog_title = gets.chomp
		@blog_content = []
	end

	def add_post 
		new_post = Post.new
		@blog_content.push(new_post)
	end

	def sort_desc
		@blog_content.sort
	end

	def sort_asc
		@blog_content.reverse
	end

	def publish
		@blog_content.each {|entry| puts "Time: #{entry.post_time}\n
			Title: #{entry.post_title}\n
			By: #{entry.post_author}\n
			#{entry.post_content}"}
	end
end

class Post

	attr_accessor :post_time, :post_title, :post_author, :post_content

	def initialize
		puts "Creating new post."
		@post_time = Time.now
		puts "Please enter the title of your post"
		@post_title = gets.chomp
		puts "Please enter the author of your post"
		@post_author = gets.chomp
		puts "Please enter the content of your post"
		@post_content = gets.chomp
		puts "Post recorded."
	end

end

new_blog = Blog.new
new_blog.add_post
new_blog.add_post
new_blog.publish