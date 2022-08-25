# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Clearing database..."
Booking.destroy_all
Computer.destroy_all
User.destroy_all
puts "Cleared!"

puts "Creating users, computers..."

macAir = Computer.new(
  brand: "Apple",
  model:  "MacAir",
  year: 2020,
  screen_size: "13.0",
  processor: "Apple M1 with 8-core CPU and 7-core GPU",
  ram: "8 GB",
  storage: "256 GB SSD",
  category: "Entertainment",
  os: "Mac OS",
  price: 9,
  description: "The thin and powerful MacBook Air is a 13-inch laptop with a Retina display. This screen provides unprecedented sharpness and accurate color reproduction, allowing you to enjoy your favorite movies, series or photos.",
  user: User.create!(
    first_name: "Bob",
    last_name: "Rutherford",
    email: "bob@fakemail.com",
    address: "Jacob Obrechtstraat 92, 1071 KR Amsterdam",
    password: "password",
  )
)
file = URI.open("https://res.cloudinary.com/carole-g/image/upload/v1661278409/macbookpro_y45wfw.jpg")
macAir.photos.attach(io: file, filename: "MacAir.jpg", content_type: "image/jpg")

macAir.save!

macBook = Computer.new(
  brand: "Apple",
  model:  "MacBook Pro",
  year: 2022,
  screen_size: "13.3",
  processor: "Apple M1 with 8-core CPU and 7-core GPU",
  ram: "8 GB",
  storage: "256 GB SSD",
  category: "Development",
  os: "Mac OS",
  price: 12,
  description: "The MacBook Pro is a thin 13.3-inch laptop with unprecedented performance, a Touch Bar and a strong battery. With its 8-core CPU and 8-core GPU, the Apple M1 chip ensures lightning-fast performance and smooth graphics, allowing you to work smoothly with various demanding apps.",
  user: User.create!(
    first_name: "Pauline",
    last_name: "Marsh",
    email: "pauline@fakemail.com",
    address: "Tweede Oosterparkstraat 128, 1092 BP Amsterdam",
    password: "password"
  )
)
file = URI.open("https://res.cloudinary.com/carole-g/image/upload/v1661278409/mac_pro_tdxsb3.jpg")
macBook.photos.attach(io: file, filename: "MacBookPro.jpg", content_type: "image/jpg")
macBook.save!

hp = Computer.new(
  brand: "HP",
  model: "ProBook",
  year: 2022,
  screen_size: "15.6",
  processor: "Intel Core i5-1135G7",
  ram: "8 GB",
  storage: "256 GB SSD",
  category: "Documentation",
  os: "Windows",
  price: 15,
  description: "Work quickly and securely on multiple tasks simultaneously with the reliable HP ProBook 450 G8 (27J14EA). With this laptop, you can quickly access your important documents anywhere and work on all your projects without any problems thanks to the powerful i5 processor and 8 GB of RAM, so you can multitask without any problems.",
  user: User.create!(
    first_name: "Danny",
    last_name: "Nuge",
    email: "danny@realmail.com",
    address: "Van Hogendorpstraat 159-121, 1051 GA Amsterdam",
    password: "password"
  )
)
file = URI.open("https://res.cloudinary.com/carole-g/image/upload/v1661278410/hp_aaltfn.jpg")
hp.photos.attach(io: file, filename: "hp.jpg", content_type: "image/jpg")
hp.save!

puts "Done!"
