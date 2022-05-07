# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Everything will get destroyed now'
User.destroy_all
ArtPiece.destroy_all
puts 'Destruction complete!'
puts 'Recreating stuff now...'
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             email: 'user1@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             email: 'user2@mailmail.com', password: '1234567')

categories = ['a', 'b', 'c']
styles = ['d', 'e', 'f']
10.times do
  ArtPiece.create!(title: Faker::Name.name, artist: Faker::Artist.name,
                   description: Faker::Lorem.paragraph,
                   creation_date: Faker::Date.in_date_period,
                   category: categories.sample,
                   price_rate: (1..100).to_a.sample,
                   address: Faker::Address.street_address,
                   style: styles.sample, user: User.first)
end
puts 'Recreation complete!'
