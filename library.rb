# Created a Library class.
# Each library is initialized and given a default name of MakerSquare.
# Each library is also assigned a books array to keep track of the books that is has.
# Each library is also assigned a users array to keep track of its memebrs.

class Library < User 

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
  end

  # The add_book method allows users to add books to the library.
  # Books are added to the books array
  #
  # Example
  #
  #    lib1.add_user(book1)
  #    lib2.add_user(book2)
  #    @users = [book1, book2]

  def add_user(user)
    @users << user
  end


end












