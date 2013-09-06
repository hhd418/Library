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
  # Users are also encouraged to join their favorite library"

class User 
  attr_reader :name, :books_out

  def initialize(name="Drew")
  	@name = name
    puts "Welcome #{@name}. Please make sure to joing your favorite library."
    @books_out = 0
  end

  # Created a check_out method to allow users to check books out.
  # The method checks to make sure that the user does not have more that 2 books checked out.
  # It then changes the status of any book that is checked out to "Checked Out"
  # It also prevents users from checking out a book that is checked out.
  # The method assigns a due date as well 
  #
  # Example
  #
  #    user1.check_out(book1)
  #    book1.status = "Check Out"
  #    book1.due_date is now equal to one week from the checkout

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
      book.due_date = Time.now + (7*24*60*60)
      puts "Your book is due #{book.due_date}!"
    end
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
  #    if Time.now is past the due date then the book will be Overdue.
  

  def overdue?(book)
    if book.status = "Checked Out"
      if Time.now > book.due_date
        book.status = "Overdue"
        puts "#{book.title} is Overdue!"
      end
    elsif book.status = "Overdue"
      puts "#{book.title} is Overdue!"
    end
  end


end