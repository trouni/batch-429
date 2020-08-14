puts 'Creating restaurants...'
5.times do
  Restaurant.create!({
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address
  })
end