require 'rest-client'
require 'json'
require 'faker'

10.times do 
    email = Faker::Internet.email 
    lat = Faker::Address.latitude
    long = Faker::Address.longitude
    User.create(email: email, password: "1234", lat: lat, long: long)
end
# put lat + long back
10.times do 
    title = Faker::Book.title
    message = Faker::Quotes::Shakespeare.romeo_and_juliet_quote
    Miss.create(title: title, message: message, user_id: User.all.sample[:id])
end

