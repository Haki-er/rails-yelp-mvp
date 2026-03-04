require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating 10 restaurants..."

10.times do
  restaurant = Restaurant.create!(
    name:         Faker::Restaurant.name,
    address:      Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category:     ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  puts "Created #{restaurant.name}"

end

puts "Finished!"
