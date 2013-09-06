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
  attr_accessor :name

  def initialize(name="Drew")
  	@name = name
    puts "Welcome #{@name} to the MakerSquare library!"
    @books_out = 0
  end


  
 


end