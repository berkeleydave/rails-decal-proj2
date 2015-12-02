# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Make Pokemon
%w(Squirtle Charmander Bulbasaur Pikachu).each do |name|
  Pokemon.create name: name, level: rand(1..20), health: 100
end

# Make other users
%w(Armaan Omkar Angus Dave).each do |name|
  User.create name: name, email: name+"@groupie.com", password: 'password', age: 20, sex: 'male'
end
