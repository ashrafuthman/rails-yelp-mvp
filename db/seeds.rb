# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:  'japanese',
    phone_number: '053-345-333',
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:  'french',
    phone_number: '053-345-333',
  },
    {
    name:         "Hong kung",
    address:      'Lisbon',
    category:  'chinese',
    phone_number: '053-345-333',
  },
  {
    name:         'Benedict',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:  'italian',
    phone_number: '053-345-333',
  },
   {
    name:         'Khwan',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:  'belgian',
    phone_number: '053-345-333',
  }
]
Restaurant.create!(restaurants_attributes)

reviews_attributes = [
  {
    content: 'The waiteress gave me a finger and winked. I dont know what I am supposed to feel',
    rating: 4,
    restaurant: Restaurant.find_by(name: 'Khwan'),
  },
  {
    content: 'The waiteress gave me a finger and winked. I dont know what I am supposed to feel',
    rating: 5,
    restaurant: Restaurant.find_by(name: 'Benedict'),
  },
  {
    content: 'The waiteress gave me a finger and winked. I dont know what I am supposed to feel',
    rating: 3,
    restaurant: Restaurant.find_by(name: 'Hong kung'),
  },
  {
    content: 'The waiteress gave me a finger and winked. I dont know what I am supposed to feel',
    rating: 2,
    restaurant: Restaurant.find_by(name: 'Pizza East'),
  },
  {
    content: 'The waiteress gave me a finger and winked. I dont know what I am supposed to feel',
    rating: 4,
    restaurant: Restaurant.find_by(name: 'Dishoom'),
  }
]

Review.create!(reviews_attributes)
puts 'Finished!'
