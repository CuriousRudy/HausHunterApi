# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


100.times do
  Listing.create(
    street_address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip_code,
    beds: rand(1..5),
    baths: rand(1..5),
    asking_price: rand(800000..1500000)
  )
end

10.times do
  name = Faker::Fallout.character
  name = name.split(" ")
  User.create(
    first_name: name[0],
    last_name: name[1],
    email: Faker::Internet.email(name[0]),
    password: '123'
  )
end

100.times do
  Appointment.create(
    user_id: rand(1..10),
    listing_id: rand(1..100),
    date: Faker::Date.forward(23),
    time: rand(0...2400),
    seen: false
  )
end

75.times do
  Note.create(
    user_id: rand(1..10),
    appointment_id: rand(1..50),
    content: Faker::Fallout.quote
  )
end

75.times do
  Note.create(
    user_id: rand(1..10),
    appointment_id: rand(51..100),
    content: Faker::Hacker.say_something_smart
  )
end
