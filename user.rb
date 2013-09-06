  # Created a user class and initialized it with a name argument.
  # The User class also inherits from the Book class so that the users can access the books.
  # All users are given an inital status of no books checked out.
  # All users are given an initial standing of Good. This will change is they have books overdue
  #
  # Examples
  #
  #   user1 = User.new('Mike')
  #   Will give user1 the name of Mike.
  #   If no name is entered the user will have a default name of Drew!
  #
  # Users are also encouraged to join their favorite library"

class User 
  attr_accessor :books_out
  attr_reader :name

  def initialize(name="Drew")
  	@name = name
    puts "Welcome #{@name}. Please make sure to joing your favorite library."
    @books_out = 0
    @user_standing = "Good"
  end



  # Created a check_in method to allow user to return books.
  # The method will change the book status to Available and decrease the number of books the user has check out by 1.
  #
  # Example
  #
  #    user1.check_in(book1)
  #    Will thank the user for returning the book.
  #    Changes book1.status to available
  #    Subtracts 1 from user1.books_out

  def check_in(book)
    puts "Thank you for returning #{book.title}!"
    book.status = "Available"
    @books_out = @books_out - 1
  end

  # Created an overdue? method to check if a book is Overdue.
  # It only checks the status of Checked Out books.
  #
  # Example
  #
  #    user1.overdue?(book1)
  #    If Time.now is past the due date then the book will be Overdue.
  #    The user_standing will be changed to Bad and he will not be able to checkout more books.

  def overdue?(book)
    if book.status == "Checked Out"
      if Time.now > book.due_date
        book.status = "Overdue"
        puts "#{book.title} is Overdue!"
        @user_standing = "Bad"
      end
    elsif book.status == "Overdue"
      puts "#{book.title} is Overdue!"
    end
  end


end