class User

  # Created a user class and initialized it with a name argument.
  #
  # Examples
  #
  #   user1 = User.new('Mike')
  #   Will give user1 the name of Mike.
  #   If no name is entered the user will have a default name of Drew!
  #
  # Users are also greeted with open arms to the MakerSquare library!
  def initialize(name="Drew")
  	@name = name
    puts "Welcome #{@name} to the MakerSquare library!"
  end

  def add_book(author,title,description)
  end

  def book_info
  end

  def check_out()
  end

  def overdue?(name)
  end

  def check_in(name)
  end

  def overdue_list
  end

end