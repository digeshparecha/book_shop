# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(first_name: "user-1", last_name:"user-1", email:"user-1@gmail.com", password: "user123", password_confirmation: "user123")
User.create(first_name: "user-2", last_name:"user-2", email:"user-2@gmail.com", password: "user123", password_confirmation: "user123")
User.create(first_name: "user-3", last_name:"user-3", email:"user-3@gmail.com", password: "user123", password_confirmation: "user123")
User.create(first_name: "user-4", last_name:"user-4", email:"user-4@gmail.com", password: "user123", password_confirmation: "user123")
User.create(first_name: "Admin", last_name:"Admin", email:"admin@gmail.com", password: "admin123", password_confirmation: "admin123", is_admin: true)




["Education", "Entertainment", "Social", "Technology"].each do |category|
  Category.create(name: category )
end


Book.create(author_name: "Author 1", description: "this is very nice book.", title: "book-1", category_id: 1 )
Book.create(author_name: "Author 2", description: "this is very nice book.", title: "book-2", category_id: 2 )
Book.create(author_name: "Author 3", description: "this is very nice book.", title: "book-3", category_id: 3 )
Book.create(author_name: "Author 4", description: "this is very nice book.", title: "book-4", category_id: 4 )
Book.create(author_name: "Author 5", description: "this is very nice book.", title: "book-5", category_id: 1 )
Book.create(author_name: "Author 6", description: "this is very nice book.", title: "book-6", category_id: 2 )

