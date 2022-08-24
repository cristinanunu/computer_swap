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

macAir = Computer.new(
  brand: "Apple MacAir", # change
  category: "Gaming",
  screen_size: "13.0",
  price: "9€/day", # change

  user: User.create!(
    first_name: "Bob",
    last_name: "Rutherford",
    email: "bob@fakemail.com",
    password: "password",
  )
)
file = URI.open("https://res.cloudinary.com/carole-g/image/upload/v1661278409/macbookpro_y45wfw.jpg")
macAir.photos.attach(io: file, filename: "MacAir.jpg", content_type: "image/jpg")

macAir.save!

macBook = Computer.new(
  brand: "Apple Mac Book Pro", # change
  category: "Data Science",
  screen_size: "13.3",
  price: "12€/day", # change
  user: User.create!(
    first_name: "Pauline",
    last_name: "Marsh",
    email: "pauline@fakemail.com",
    password: "password"
  )
)
file = URI.open("https://res.cloudinary.com/carole-g/image/upload/v1661278409/mac_pro_tdxsb3.jpg")
macBook.photos.attach(io: file, filename: "MacBookPro.jpg", content_type: "image/jpg")
macBook.save!

hp = Computer.new(
  brand: "HP ProBook", # change
  category: "Development",
  screen_size: "15.0",
  price: "15€/jour", # change
  user: User.create!(
    first_name: "Danny",
    last_name: "Nuge",
    email: "danny@realmail.com",
    password: "password"
  )
)
file = URI.open("https://res.cloudinary.com/carole-g/image/upload/v1661278410/hp_aaltfn.jpg")
hp.photos.attach(io: file, filename: "hp.jpg", content_type: "image/jpg")
hp.save!
