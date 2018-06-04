# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "oladhari", email: "oussama@gmail.com", password:  "topsecret", password_confirmation: "topsecret", address: "Nara, Japan")
puts
puts "User Added completed"

User.create(username: "reymon29", email: "rey@gmail.com", password:  "topsecret", password_confirmation: "topsecret", address: "Tokyo, Japan")
puts
puts "User Added completed"

User.create(username: "hcquach", email: "hc@gmail.com", password:  "topsecret", password_confirmation: "topsecret", address: "Paris, France")
puts
puts "User Added completed"

User.create(username: "gianluca24", email: "luca@gmail.com", password:  "topsecret", password_confirmation: "topsecret", address: "Manila, Philippines")
puts
puts "User Added completed"
