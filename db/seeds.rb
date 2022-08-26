puts "Clearing database..."
Booking.destroy_all
Computer.destroy_all
User.destroy_all
puts "Cleared!"

puts "Creating users, computers..."

macAir = Computer.new(
  brand: "Apple",
  model:  "MacBook Air",
  year: 2022,
  screen_size: "13.0",
  processor: "Apple M2 with 8-core CPU and 10-core GPU",
  ram: "8 GB",
  storage: "256 GB SSD",
  category: "Entertainment",
  os: "Mac OS",
  price: 12,
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
  year: 2018,
  screen_size: "16.0",
  processor: "Apple M1 with 8-core CPU and 7-core GPU",
  ram: "16 GB",
  storage: "256 GB SSD",
  category: "Development",
  os: "Mac OS",
  price: 15,
  description: "The MacBook Pro is a thin 16-inch laptop with unprecedented performance, a Touch Bar and a strong battery. With its 8-core CPU and 8-core GPU, the Apple M1 chip ensures lightning-fast performance and smooth graphics, allowing you to work smoothly with various demanding apps.",
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
  price: 9,
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

msi = Computer.new(
  brand: "MSI",
  model: "Titan GT77",
  year: 2021,
  screen_size: "15.6",
  processor: "Intel Core i9",
  ram: "16Go",
  storage: "128Go DDR5",
  category: "Gaming",
  os: "Windows",
  price: 15,
  description: "Amazing gaming laptop, can run any game without being pluged, poerwfull and lightweight the perfect computer for gamers that are moving around.",
  user: User.create!(
    first_name: "Mango",
    last_name: "Artis",
    email: "Artis@realmail.com",
    address: "Sarphatistraat 91, 1018 EZ Amsterdam",
    password: "password"
  )
)
file = URI.open("https://res.cloudinary.com/carole-g/image/upload/v1661516597/msi_bfnhgp.jpg")
file3 = URI.open("https://res.cloudinary.com/carole-g/image/upload/v1661516597/msi3_qtroyt.jpg")
file4 = URI.open("https://res.cloudinary.com/carole-g/image/upload/v1661517558/msi4_pdwlyw.jpg")
msi.photos.attach(io: file, filename: "msi.jpg", content_type: "image/jpg")
msi.photos.attach(io: file3, filename: "msi3.jpg", content_type: "image/jpg")
msi.photos.attach(io: file4, filename: "msi4.jpg", content_type: "image/jpg")
msi.save!

alien = Computer.new(
  brand: "Alienware",
  model: "m15",
  year: 2019,
  screen_size: "15.6",
  processor: "Processeur Intel® Core™ i7-12700H ",
  ram: "16 Go, 2 x 8 Go de mémoire DDR5 bicanale à 4 800 MHz",
  storage: "512 Go",
  category: "Gaming",
  os: "Windows",
  price: 12,
  description: "a great and afffordable gaming laptop easy to cary doesn't make a noise, the perfect first step to become a great player.",
  user: User.create!(
    first_name: "Gon",
    last_name: "Hunter",
    email: "GonX@realmail.com",
    address: "Van Hogendorpstraat 159-121, 1051 GA Amsterdam",
    password: "password"
  )
)
file = URI.open("https://res.cloudinary.com/carole-g/image/upload/v1661516597/alien_yrwug7.jpg")
file2 = URI.open("https://res.cloudinary.com/carole-g/image/upload/v1661516597/alien2_gvbtek.jpg")
alien.photos.attach(io: file, filename: "alien.jpg", content_type: "image/jpg")
alien.photos.attach(io: file2, filename: "alien2.jpg", content_type: "image/jpg")
alien.save!

surface = Computer.new(
  brand: "Surface",
  model: "Pro 8",
  year: 2022,
  screen_size: "13",
  processor: "Processeur Intel® Core™ 11e",
  ram: "4 Go",
  storage: "128 Go",
  category: "Entertainment",
  os: "Windows",
  price: 9,
  description: "Surface Pro 8 is designed to bring out the best in Windows 11 and let you work, play, and create your way. Laptop, tablet or portable digital media. it's up to you, it's your computer.",
  user: User.create!(
    first_name: "Gon",
    last_name: "Hunter",
    email: "Gon1X@realmail.com",
    address: "Van Hogendorpstraat 159-121, 1051 GA Amsterdam",
    password: "password"
  )
)
file = URI.open("https://res.cloudinary.com/carole-g/image/upload/v1661516598/surface_dd1vck.jpg")
surface.photos.attach(io: file, filename: "surface.jpg", content_type: "image/jpg")
surface.save!

dell = Computer.new(
  brand: "Dell",
  model: "Latitude 5431",
  year: 2020,
  screen_size: "14",
  processor: "12th Gen Intel® Core™ i7-1270P",
  ram: "16 GB",
  storage: "512 Go",
  category: "Development",
  os: "Windows",
  price: 12,
  description: "Work anywhere in the world with the industry's smartest* and most secure* business PCs with built-in AI.",
  user: User.create!(
    first_name: "Gon",
    last_name: "Hunter",
    email: "Gon2X@realmail.com",
    address: "Van Hogendorpstraat 159-121, 1051 GA Amsterdam",
    password: "password"
  )
)
file = URI.open("https://res.cloudinary.com/carole-g/image/upload/v1661515562/dell_z4vp0q.jpg")
file2 = URI.open("https://res.cloudinary.com/carole-g/image/upload/v1661515978/dell2_gfbykr.jpg")
file3 = URI.open("https://res.cloudinary.com/carole-g/image/upload/v1661515978/dell4_didqg8.jpg")

dell.photos.attach(io: file, filename: "dell.jpg", content_type: "image/jpg")
dell.photos.attach(io: file2, filename: "dell2.jpg", content_type: "image/jpg")
dell.photos.attach(io: file3, filename: "dell3.jpg", content_type: "image/jpg")
dell.save!

lenovo = Computer.new(
  brand: "Lenovo",
  model: "Legion 5i Pro 16",
  year: 2018,
  screen_size: "13,3",
  processor: "Processeur Intel® Core™ i5-12500H 12e génération ",
  ram: "32 Go (2 x 16 Go) SO-DIMM DDR5 4800MHz",
  storage: "512 Go SSD M.2 2242",
  category: "Data Science",
  os: "Windows",
  price: 15,
  description: "this is a great laptop to write heavy programms while traveling, doesn't lack power or battery.",
  user: User.create!(
    first_name: "Gon",
    last_name: "Hunter",
    email: "Gon3X@realmail.com",
    address: "Van Hogendorpstraat 159-121, 1051 GA Amsterdam",
    password: "password"
  )
)
file = URI.open("https://res.cloudinary.com/carole-g/image/upload/v1661517455/lenovo_sgnnbv.jpg")
lenovo.photos.attach(io: file, filename: "lenovo.jpg", content_type: "image/jpg")
lenovo.save!

asus = Computer.new(
  brand: "Asus",
  model: "Zenbook EVO-UX325",
  year: 2021,
  screen_size: "13",
  processor: "Intel Core i5",
  ram: "16 Go",
  storage: "512 Go SSD",
  category: "Photo-Editing",
  os: "Windows",
  price: 15,
  description: "ASUS laptops with OLED display feature the best color gamut in their class. They reproduce every color with stunning fidelity for true-to-life rendering and professional quality images.",
  user: User.create!(
    first_name: "Gon",
    last_name: "Hunter",
    email: "Gon4X@realmail.com",
    address: "Van Hogendorpstraat 159-121, 1051 GA Amsterdam",
    password: "password"
  )
)
file = URI.open("https://res.cloudinary.com/carole-g/image/upload/v1661515561/asus_i6k0ys.jpg")
asus.photos.attach(io: file, filename: "asus.jpg", content_type: "image/jpg")
asus.save!

puts "Done!"
