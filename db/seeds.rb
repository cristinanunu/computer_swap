# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Clearing database..."
Computer.destroy_all
User.destroy_all
puts "Cleared!"

puts "Creating users, computers..."

apple = Computer.new(
  brand: "Apple MacBook",
  category: "Gaming",
  screen_size: "13.0",
  price: "500€",

  user: User.create!(
    first_name: "Bob",
    last_name: "Rutherford",
    email: "bob@fakemail.com",
    password: "password",
  )
)
file = URI.open("https://res.cloudinary.com/carole-g/image/upload/v1661261659/mac_fmvki0.jpg")
apple.photo.attach(io: file, filename: "apple.jpg", content_type: "image/jpg")
apple.save!

hp = Computer.new(
  brand: "Microsoft Surface",
  category: "Data Science",
  screen_size: "13.3",
  price: "700€",
  user: User.create!(
    first_name: "Pauline",
    last_name: "Marsh",
    email: "pauline@fakemail.com",
    password: "password"
  )
)
file = URI.open("https://res.cloudinary.com/carole-g/image/upload/v1661261654/hp2_moq3vw.jpg")
hp.photo.attach(io: file, filename: "hp.jpg", content_type: "image/jpg")
hp.save!

hp2 = Computer.new(
  brand: "HP",
  category: "Development",
  screen_size: "15.0",
  price: "1000€",
  user: User.create!(
    first_name: "Danny",
    last_name: "Nuge",
    email: "danny@realmail.com",
    password: "password"
  )
)
file = URI.open("https://res.cloudinary.com/carole-g/image/upload/v1661261659/mac_fmvki0.jpg")
hp2.photo.attach(io: file, filename: "hp2.jpg", content_type: "image/jpg")
hp2.save!
