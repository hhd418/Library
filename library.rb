# Created a Library class.
# Each library is initialized and given a default name of MakerSquare.
# Each library is also assigned a books array to keep track of the books that is has.
# Each library is also assigned a users array to keep track of its memebrs.

class Library  

  attr_accessor :books, :users

  def initialize(lib="MakerSquare")
  	@lib = lib
    @books = []
    @users = []
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

  # The add_book method allows users to add books to the library.
  # Books are added to the books array
  #
  # Example
  #
  #    lib1.add_user(user1)
  #    lib2.add_user(user2)
  #    @users = [user1, user2]

  def add_user(user)
    @users << user
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
  # The method assigns a due date as well 
  # 
  #
  # Example
  #
  #    user1.check_out(book1)
  #    book1.status = "Check Out"
  #    book1.due_date is now equal to one week from the checkout

  def check_out(book, user)
   # if @user_standing == "Bad"
    #  puts "You are not aloud to check out books because you have an overdue book."
    # else
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
    #end
  end


  # The books_overdue? method will iterate through the books array to find books tht Overdue.
  # Books that are overdue are then outputed
  #
  # Example
  #
  #   lib1.books_overdue?
  #   will print all books that have book

  def books_overdue?
    @books.each do |book|
      if book.status == "Overdue"
        puts "#{book.title} is Overdue!"
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












