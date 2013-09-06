  # Created a user class and initialized it with a name argument.
  # The User class also inherits from the Book class so that the users can access the books.
  # All users are given an inital status of no books checked out.
  # 
  # Examples
  #
  #   user1 = User.new('Mike')
  #   Will give user1 the name of Mike.
  #   If no name is entered the user will have a default name of Drew!
  #
  # Users are also greeted with open arms to the MakerSquare library!

class User < Book 
  attr_reader :name

  def initialize(name="Drew")
  	@name = name
    puts "Welcome #{@name} to the MakerSquare library!"
    @books_out = 0
  end

  # Created a check_out method to allow users to check books out.
  # The method checks to make sure that the user does not have more that 2 books checked out.
  # It then changes the status of any book that is checked out to "Checked Out"
  # It also prevents users from checking out a book that is checked out.
  # 
  # Example
  #
  #    user1.check_out(book1)
  #    book1.status = "Check Out"

  def check_out(book)
    if @books_out > 2 then
      puts "You have too many books checked out!"
      puts "Please return a book before checking out another one."
    elsif book.status == "Checked Out"
      puts "Sorry, this book is already checked out!"
    else
      puts "You checked out #{book.title}. Please bring it back in a week."
      @books_out = @books_out + 1
      book.status = "Checked Out" 
    end
  end


end