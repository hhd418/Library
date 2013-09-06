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
          puts "#{book.title} was check out by #{book.owner} and is due #{book.due_date}."
        end
      end
    end
  end

end












