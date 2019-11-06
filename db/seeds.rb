require 'faker' 
User.create(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, description:Faker::Lorem.paragraph, email: "jean@yopmail.com",password:"password")

puts 'User created'


30.times do
	Event.create(start_date: Faker::Date.forward(days: 365), duration: rand(6..100)*5, admin_id: User.all.sample.id, price: rand(5..1000), description:Faker::Lorem.paragraph, title: Faker::Movies::StarWars.quote, location: Faker::Address.city)
end
puts 'Events created'

