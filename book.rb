# Created a Book class 
#
# Books a created and are assigned an author, title, and description.
# Books are also initially given a status of Available.
# 
# Example
#
#   book1 = Book.new("Dickens", "Great Expectations", "Thriller")
#   This will create a new book with the author of Dickens and the title of Great Expecations and a description of Thriller.
#

class Book
	attr_accessor :status, :due_date
	attr_reader :author, :title, :description

	def initialize(author="Drew", title="MakerSquare", description="Awesome")
		@author = author
		@title = title
		@description = description
		@status = "Available"
		@due_date = 0
	end

  end
