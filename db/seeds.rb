# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Clearing database..."
User.destroy_all
Computer.destroy_all
puts "Cleared!"

puts "Creating users, computers..."

User.create!(
  first_name: "Bob",
  last_name: "Rutherford",
  email: "bob@fakemail.com",
  password: "password"
)

User.create!(
  first_name: "Danny",
  last_name: "Nuge",
  email: "danny@realmail.com",
  password: "password"
)

User.create!(
  first_name: "Pauline",
  last_name: "Marsh",
  email: "pauline@fakemail.com",
  password: "password"
)

User.all.each do |user|
  Computer.create!(
    user: user,
    brand: ["Apple MacBook", "Microsoft Surface", "HP Probook"].sample,
    category: ["Gaming", "Development", "Data Science"].sample,
    screen_size: [13.0, 13.3, 15.0].sample,
    price: [50, 80, 100].sample
  )
end

puts "Done!"

# Computer.new(
#   brand: "Apple MacBook",
#   category: "Development",
#   screen_size: 13.0,
#   price: 80
#   )

# Computer.new(
#   brand: "Microsoft Surface",
#   category: "Gaming",
#   screen_size: 15.0,
#   price: 50
#   )

# Computer.new(
#   brand: "HP Probook",
#   category: "Development",
#   screen_size: 13.3,
#   price: 40
#   )
