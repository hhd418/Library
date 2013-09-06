# Created a Library class.
# Each library is initialized and given a default name of MakerSquare.
# Each library is also assigned a books array to keep track of the books that is has.

class Library  

  attr_accessor :books, :users

  def initialize(lib="MakerSquare")
  	@lib = lib
    @books = []
  end

  # The add_book method allows users to add books to the library.
  # Books are added to the books array
  #
  # Example
  #
  #    lib1.add_book(book1)
  #    lib2.add_book(book2)
  #    @books = [book1, book2]

  def add_book(book)
    @books << book
    book.owner = @lib
  end


  # The titles method with print all of the title the book currently has.
  #
  # Example
  #
  #   lib1.titles
  #   It will iterate through the books array and print out the book titles.

  def titles
    @books.each do |book|
      puts "We have #{book.title}."
    end
  end

  # Created a check_out method to allow users to check books out.
  # The method first makes sure that the user_standing is not bad. If it is that means the user has an overdue book and cannot check out anymroe books.
  # The method checks to make sure that the user does not have more that 2 books checked out.
  # It then changes the status of any book that is checked out to "Checked Out"
  # It also prevents users from checking out a book that is checked out.
  # The method assigns a due date as well and assigns owernship of the book to the user.
  # The method also check to make sure that the book has been added to the library.
  #
  # Example
  #
  #    user1.check_out(book1, user1)
  #    book1.status = "Check Out"
  #    book1.due_date is now equal to one week from the checkout

  def check_out(book, user)
    if book.owner = ""
      puts "We don't have this book. Please add it to the library, before checking it out."
    else
      if user.user_standing == "Bad"
        puts "You are not aloud to check out books because you have an overdue book."
      else
        if user.books_out > 2 then
          puts "You have too many books checked out!"
          puts "Please return a book before checking out another one."
        elsif book.status == "Checked Out"
          puts "Sorry, this book is already checked out!"
        else
          puts "You checked out #{book.title}. Please bring it back in a week."
          user.books_out = user.books_out + 1
          book.status = "Checked Out"
          book.owner = user.name
          book.due_date = Time.now + (7*24*60*60)
          puts "Your book is due #{book.due_date}!"
        end
      end
    end
  end

  # Created a check_in method to allow user to return books.
  # The method will change the book status to Available and decrease the number of books the user has check out by 1.
  # The owner of the book will also be changed to library.
  #
  # Example
  #
  #    user1.check_in(book1, user1)
  #    Will thank the user for returning the book.
  #    Changes book1.status to available
  #    Subtracts 1 from user1.books_out

  def check_in(book, user)
    puts "Thank you #{user.name} for returning #{book.title}!"
    book.status = "Available"
    user.books_out = user.books_out - 1
    book.owner = @lib
  end


  # Created a  books_overdue? method to check if a book is Overdue.
  # The books_overdue? method will iterate through the books array to find books that are Overdue.
  # Books that are overdue are then outputed
  #
  # Example
  #
  #   lib1.books_overdue?
  #   will print all books that are overdue

  def books_overdue?
    @books.each do |book|
      if book.status == "Overdue"
        puts "#{book.title} is Overdue!"
      elsif book.status == "Checked Out"
        if Time.now > book.due_date
          book.status = "Overdue"
          puts "#{book.title} is Overdue!"
          user.user_standing = "Bad"
        end
      end
    end
  end




  # The books_out method will interate through books that are Checked Out.
  # This will return the title, the user, and the due date for books that are out.
  #
  # Example
  #
  #   lib1.books_out 
  #   Will print all books that are checked out.

  def books_out
    @books.each do |book|
      if book.status == "Checked Out"
          puts "#{book.title} was checked out by #{book.owner} and is due #{book.due_date}."
      end
    end
  end

end












