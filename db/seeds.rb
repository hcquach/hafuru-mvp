# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

oussama = User.create(username: "oladhari", email: "oussama@gmail.com", password:  "topsecret", password_confirmation: "topsecret")
puts
puts "User Added completed"

rey = User.create(username: "reymon29", email: "rey@gmail.com", password:  "topsecret", password_confirmation: "topsecret")
puts
puts "User Added completed"

hc = User.create(username: "hcquach", email: "hc@gmail.com", password:  "topsecret", password_confirmation: "topsecret")
puts
puts "User Added completed"

luca = User.create(username: "gianluca24", email: "luca@gmail.com", password:  "topsecret", password_confirmation: "topsecret")
puts
puts "User Added completed"

Gratitude.create!(title: "coffee", user_id: 1)
Gratitude.create(title: "iphone", user_id: 2)
Gratitude.create(title: "group-photos", user_id: 3)
Gratitude.create(title: "weather", user_id: 4)
