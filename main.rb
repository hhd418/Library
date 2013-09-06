require_relative 'library.rb'
require_relative 'user.rb'
require_relative 'book.rb'

book1 = Book.new
book2 = Book.new('a','b','c')
book3 = Book.new('d', 'e', 'f')
book4 = Book.new('x', 'y', 'z')

user1 = User.new
user2 = User.new('mike')
user3 = User.new('tess')

lib1 = Library.new

puts book1.status


lib1.add_book(book1)
lib1.add_book(book2)
lib1.add_book(book3)

puts book1.owner

lib1.check_out(book1, user1)
lib1.check_out(book2, user1)
lib1.check_out(book3, user1)

puts book1.status
puts book1.owner

lib1.check_in(book1, user1)
lib1.check_out(book4, user1)

puts book1.status

lib1.add_book(book4)
lib1.check_out(book4, user1)
lib1.check_out(book4, user2)

puts book4.status

puts book1.owner

lib1.books_available
lib1.books_out

book1.status = "Overdue"

lib1.books_overdue?

lib1.check_out(book3, user1)

puts user1.user_standing
