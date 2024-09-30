# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "==="
puts "Seed Users Start"
number_of_books = 25
book_counter = 0
number_of_books.times do
  book_counter += 1

  author = Author.new(name: Faker::Book.author)
  if author.save
    book = Book.new(
      author: author,
      title: Faker::Book.title,
      publisher: Faker::Book.publisher,
      publication_year: Faker::Date.in_date_period.year
    )
    if book.save
      puts "[#{book_counter}/#{number_of_books}] Created Book with title: #{book.title}"
    else
      puts "[#{book_counter}/#{number_of_books}] Failed to create Book: #{book.errors.full_messages}"
    end
  end
end