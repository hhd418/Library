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
  attr_accessor :books_out, :user_standing
  attr_reader :name

  def initialize(name="Drew")
  	@name = name
    puts "Welcome #{@name}. Please make sure to joing your favorite library."
    @books_out = 0
    @user_standing = "Good"
  end
end