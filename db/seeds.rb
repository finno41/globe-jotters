# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

countries = ISO3166::Country.all

puts "deleting countries"
Country.destroy_all

puts "deleting users"
User.destroy_all

puts "deleting areas"
Area.destroy_all

puts "creating countries..."
countries.each do |country|
  puts "creating #{country}"
  Country.create(name:country.unofficial_names[0])
end
