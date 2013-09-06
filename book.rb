# Created a Book class 
#
# Books a created and are assigned an author, title, and description.
# Books are initially given a status of Available.
# Books are given a blank due date
# Books are assigned a blank owner
#   - this will allow for the owner to change when books are added to the library and when they are checked out.
#
# Example
#
#   book1 = Book.new("Dickens", "Great Expectations", "Thriller")
#   This will create a new book with the author of Dickens and the title of Great Expecations and a description of Thriller.
#

class Book
	attr_accessor :status, :due_date, :owner
	attr_reader :author, :title, :description

	def initialize(author="Drew", title="MakerSquare", description="Awesome")
		@author = author
		@title = title
		@description = description
		@status = "Available"
		@due_date = ""
		@owner = " "
		puts "You have created a new book. Please add it to your library."
	end

  end
