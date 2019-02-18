# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning DB"
Sofa.destroy_all

puts "Creating 3 sofas"
sofas_attribute = [
{
  name: "Vintage Sofa",
  description: "Sofa from my grandmother",
  location: "Geneva",
  price_per_day: 35,
  capacity: 4,
  comfort: 2,
  age: 30,
  wineproof: true,
  bed: false
},
{
  name: "Modern Sofa",
  description: "Brand new leather sofa",
  location: "Lausanne",
  price_per_day: 60,
  capacity: 6,
  comfort: 10,
  age: 1,
  wineproof: false,
  bed: false
},
{
  name: "Art-déco Sofa",
  description: "Miami Vice Sofa style",
  location: "Lutry",
  price_per_day: 45,
  capacity: 4,
  comfort: 1,
  age: 5,
  wineproof: true,
  bed: false
}
]
Sofa.create!(sofas_attribute)
puts "Done!"


