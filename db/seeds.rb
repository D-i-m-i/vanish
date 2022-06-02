# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

Van.destroy_all
User.destroy_all

User.create!(email: "randomemail@email.com", password: "1234567", reset_password_token: "reset token test", name: "John", bio: "My life as John is so interesting")
User.create!(email: "randomemail2@email.com", password: "123456789", reset_password_token: "reset token test 2", name: "Gorilla", bio: "I love eating bananas all day long")
host1 = User.create!(email: "host1@email.com", password: "123456789111", reset_password_token: "reset token test 3", name: "Host", bio: "I am the Host of Vans")
host2 = User.create!(email: "host2@email.com", password: "123456789114", reset_password_token: "reset token test 4", name: "Host2", bio: "I am the Host2 of Vans")

van_1 = Van.create!(name: "Speeder", overview: "This is the super duper fast van", make_model_year: "Toyota Capris 1997", kitchenette: true, toilet: true, solar_power: true, price: 4.5, user: host1, address: "Madrid")
van_2 = Van.create!(name: "Speeder 2", overview: "This is the super spacious van", make_model_year: "Honda Lapris 1995", kitchenette: false, toilet: true, solar_power: true, price: 5.0, user: host1, address: "Madrid")
van_3 = Van.create!(name: "Speeder 3", overview: "This is the super duper slow van", make_model_year: "Mazda Capris 2003", kitchenette: true, toilet: true, solar_power: false, price: 6.2, user: host1, address: "Madrid")
van_4 = Van.create!(name: "Speeder 4", overview: "This is the super duper chillout van", make_model_year: "Hoyota Japris 2010", kitchenette: true, toilet: true, solar_power: false, price: 9.1, user: host1, address: "Madrid")
van_5 = Van.create!(name: "Speeder 5", overview: "This is the super duper wind power van", make_model_year: "Isuzu Mapris 2015", kitchenette: true, toilet: false, solar_power: true, price: 15.9, user: host1, address: "Madrid")
van_6 = Van.create!(name: "Speeder 6", overview: "This is the super duper formula power van", make_model_year: "Isuzu Mapris 2013", kitchenette: false, toilet: false, solar_power: true, price: 12.9, user: host2, address: "Madrid")
van_7 = Van.create!(name: "Speeder 7", overview: "This is the super duper beautiful power van", make_model_year: "Isuzu Mapris 2014", kitchenette: true, toilet: false, solar_power: true, price: 10.9, user: host2, address: "Madrid")
van_8 = Van.create!(name: "Speeder 8", overview: "This is the super duper ugly power van", make_model_year: "Isuzu Mapris 2014", kitchenette: false, toilet: true, solar_power: true, price: 2.9, user: host2, address: "Madrid")
van_9 = Van.create!(name: "Speeder 9", overview: "This is the super duper old power van", make_model_year: "Isuzu Mapris 1990", kitchenette: true, toilet: true, solar_power: false, price: 7.9, user: host2, address: "Madrid")
van_10 = Van.create!(name: "Speeder 10", overview: "This is the super duper new power van", make_model_year: "Isuzu Mapris 2015", kitchenette: true, toilet: false, solar_power: true, price: 5.9, user: host2, address: "Madrid")
