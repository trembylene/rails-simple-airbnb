puts "Cleaning database"
Flat.destroy_all

puts "Creating restaurants..."

10.times do
  flat = Flat.new(
    name: Faker::Book.title,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph,
    price_per_night: (150..1000).to_a.sample,
    number_of_guests: (0..10).to_a.sample,
    )
  flat.save!
end

puts "Finished!"
