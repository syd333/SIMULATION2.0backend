require 'rest-client'
require 'json'
require 'faker'

10.times do 
    email = Faker::Internet.email 
    User.create(email: email, password: "1234")
end

10.times do 
    city = Faker::Address.city
    state = Faker::Address.state
    zip = Faker::Address.zip
    lat = Faker::Address.latitude
    long = Faker::Address.longitude
    title = Faker::Book.title
    message = Faker::Quotes::Shakespeare.romeo_and_juliet_quote
    Miss.create(city: city, state: state, zip: zip, lat: lat, long: long, title: title, message: message, user_id: User.all.sample[:id])
end

