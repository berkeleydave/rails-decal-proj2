# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Make Locations
%w(Berkeley Oakland Fremont).each do |name|
  Location.create name: name
end

# Make other users
%w(Armaan Omkar Angus Dave).each do |name|
  User.create name: name, email: name+"@groupie.com", password: 'password', age: 20, sex: 'male', phone: rand(10000000..99999999)
end

# Make POIs

%w(RSF Cream).each do |name|
  Poi.create name: name
end

# Make Groups

%w(Runners Gamers Eaters).each do |name|
  Group.create name: name
end
