# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
['Fuego', 'Marini', 'Cantaloupe', 'Dave', 'Paparich' ].each do |i|
  Restaurant.create(name: "#{i}")
end

['Pizza', 'Lasagna', 'Pasta', 'Mushroom_Risotto', 'Tiramisu', 'Panzenella', 'Bruschetta', 'Focaccia', 'Carbonara', 'Fettuccine' ].each do |i|
  Dish.create(name: "#{i}")
end

dishes = [*1..10]
restaurant = [*1..5]
Relationship.create(restaurant_id: restaurant.sample , dish_id: dishes.sample)