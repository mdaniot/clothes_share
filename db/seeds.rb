# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'cleaning up database...'
Item.destroy_all
puts 'database is clean!'

puts 'Creating new clothes'
30.times do
  item = Item.create!(
    user_id: 1,
    item_type: ['Masculinas', 'Femininas', 'Sapatos Masculinos', 'Sapatos Femininos'].sample,
    price: rand(0..500),
    availability: [true, false].sample,
    category: ['Vestidos', 'Paletós', 'Calças', 'Sapatos'].sample,
    size: rand(36..50),
    color: Faker::Color.color_name,
    brand: ['Gucci', 'Armani', 'Prada', 'Louis Vitton', 'Tom Ford'].sample
  )
  puts "New clothe - #{item.id} created."
end

puts 'All Done!'
