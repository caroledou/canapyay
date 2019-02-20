# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning DB"
Booking.destroy_all
Sofa.destroy_all

puts "Creating 6 sofas"
url = "https://www.innovationliving.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/o/l/oldschool-sofa-bed-chair-1_1.jpg"
sofa_vintage = Sofa.new(name: "Vintage Sofa", description: "Sofa from my grandmother", location: "Geneva", price_per_day: 35, capacity: 4, comfort: 2, age: 30, wineproof: true, bed: false)
sofa_vintage.remote_photo_url = url
sofa_vintage.save

url = "https://www.otthonokesmegoldasok.hu/wp-content/uploads/2018/04/grey-l-shaped-affordable-mid-century-modern-sofa.jpg"
sofa_modern = Sofa.new(name: "Modern Sofa", description: "Brand new leather sofa", location: "Lausanne", price_per_day: 60, capacity: 6, comfort: 10, age: 1, wineproof: false, bed: false)
sofa_modern.remote_photo_url = url
sofa_modern.save

url = "http://img.archiexpo.com/images_ae/photo-g/158127-13176147.jpg"
sofa_art = Sofa.new(name: "Art-déco Sofa", description: "Miami Vice Sofa style", location: "Lutry", price_per_day: 45, capacity: 4, comfort: 1, age: 5, wineproof: true, bed: false)
sofa_art.remote_photo_url = url
sofa_art.save

url = "https://bobochicparis.com/5657/panoramic-sofa-corner-convertible-with-gold-legs-xxl-hera.jpg"
sofa_angle = Sofa.new(name: "Angle Sofa", description: "Blue velvet", location: "Lutry", price_per_day: 70, capacity: 10, comfort: 8, age: 3, wineproof: false, bed: true)
sofa_angle.remote_photo_url = url
sofa_angle.save

url = "https://i.pinimg.com/originals/1d/eb/27/1deb274e5323bee8b74aa8285f321918.jpg"
sofa_hippie = Sofa.new(name: "Bohemian Sofa", description: "Colorful sofa bringing peace to your heart", location: "Geneva", price_per_day: 35, capacity: 3, comfort: 4, age: 7, wineproof: true, bed: false)
sofa_hippie.remote_photo_url = url
sofa_hippie.save

url = "https://i.ebayimg.com/00/s/NzY4WDEwMjQ=/z/niAAAOSwCTBbPJyD/$_86.JPG"
sofa_louis = Sofa.new(name: "Louis XIV Sofa", description: "Refined sofa from 16th century", location: "Zurich", price_per_day: 150, capacity: 3, comfort: 2, age: 400, wineproof: false, bed: false)
sofa_louis.remote_photo_url = url
sofa_louis.save

puts "Done"



