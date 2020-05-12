# require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

restaurants = []

 5.times do
  name = Faker::Restaurant.name
  address = Faker::Address.full_address
  phone_number = Faker::PhoneNumber.cell_phone
  category = %w(chinese italian japanese french belgian).sample
  restaurants << Restaurant.create!(name: name, address: address, phone_number: phone_number, category: category)
end

restaurants.each do |rest|
  puts "Created #{rest.name}"
end
puts 'Done!'
