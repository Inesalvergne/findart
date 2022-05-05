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
             address: Faker::Address.street_address,
             email: 'user1@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             address: Faker::Address.street_address,
             email: 'user2@mailmail.com', password: '1234567')

categories = ['Paintings', 'Sculptures', 'Literature']
styles = ['Renaissance', 'Gothic', 'Baroque']
10.times do
  ArtPiece.create!(title: Faker::Name.name, artist: Faker::Artist.name,
                   description: Faker::Lorem.paragraph,
                   creation_date: Faker::Date.in_date_period,
                   category: categories.sample,
                   price_rate: (1..100).to_a.sample,
                   style: styles.sample, user: User.first)
end
puts 'Recreation complete!'


ArtPiece.create(title: 'David', artist: 'Michelangelo', description: 'David is a masterpiece of Renaissance
  sculpture, created in marble between 1501 and 1504 by the Italian artist Michelangelo. David is a 5.17-metre
   (17 ft 0 in) marble statue of the Biblical figure David, a favoured subject in the art of Florence.',
creation_date: 'May 1st', category: 'Sculpture', price_rate: 200_000_000, style: 'Renaissance', user: User.rand, image_url: "https://en.wikipedia.org/wiki/Salvator_Mundi_(Leonardo)#/media/File:Leonardo_da_Vinci,_Salvator_Mundi,_c.1500,_oil_on_walnut,_45.4_%C3%97_65.6_cm.jpg")

ArtPiece.create(title: 'Salvator Mundi', artist:'Leonardo da Vinci', description:
'The painting depicts Christ in an anachronistic blue Renaissance dress,
making the sign of the cross with his right hand, while holding a transparent,
non-refracting crystal orb in his left, signaling his role as Salvator Mundi
and representing the of the heavens.', category: 'Painting', price_rate: '$2,500,000',
 style: 'Renaissance', user: User.rand, image_url: )

ArtPiece.create(title: 'The Card Players', artist: 'Paul Cézanne', description: 'The Card Players is
   a series of oil paintings
   by the French Post-Impressionist artist Paul Cézanne. Painted during Cézannes final period in the early 1890s,
  there are five paintings in the series. The versions vary in size,
   the number of players, and the setting in which the game takes place.' creation_date: 1894 category: 'Painting', price_rate: 2_000_000, style: "Post-Impressionist",
  user: User.rand, image_url:)

ArtPiece.create(title: "The Scream", artist: "Edvard Munch", description: "The Scream is the popular
  name given to a composition created by Norwegian artist Edvard Munch in 1893. The agonized face in the painting has
  become one of the most iconic images of art, seen as symbolizing the anxiety of the human condition."
  creation_date: 	1893 category: , price_rate: 1_900_000, style:'Expressionist', user: User.rand, image_url:)

ArtPiece.create(title: "Portrait de l'artiste sans barbe", artist: 'Vincent van Gogh', description:"Van Gogh's dozens
  of self-portraits were an important part of his œuvre as a painter. Most probably,
  van Gogh's self-portraits are depicting the face as it appeared in the mirror he
  used to reproduce his face,
  i.e. his right side in the image is in reality
  the left side of his face"
  creation_date: 1889 category: "Painting" price_rate: 1_800_000, style:"Impressionist" , user: User.rand, image_url:)

ArtPiece.create(title: 'Garçon à la Pipe', artist: 'Pablo Picasso', description: "Garçon à la Pipe is an oil on canvas painting by Pablo Picasso.
 It was painted in 1905 when Picasso was 24 years old, during his Rose Period, soon after he settled in the Montmartre area of Paris.
  The painting depicts a Parisian adolescent boy who holds a pipe in his left hand and wears
 a garland of flowers on his head, surrounded by two floral decorations",
 creation_date: 1905 category: 'Painting', price_rate: 1_500_000, style: "Post-Impressionism", user: User.rand, image_url:)

ArtPiece.create(title: f, artist: f, description:"Passionate about sculpture
   being an act of carving, Italian sculptor Amedeo Modigliani carved Tête from a single block of
  limestone. It was sold for $59.5 million to a private collector in 2010."
  creation_date: category: "Sculpture", price_rate: 1_000_000, style: "Surreal", user: User.rand)

ArtPiece.create(title: "" f, artist: f, description: "L' Homme au doigt or 'Pointing Man', became the most expensive sculpture ever sold when a private collector bought it for a whopping US$141.3 million in May 2015. The 1947 bronze statue is considered Swiss sculptor Alberto Giacometti's “most iconic and evocative sculpture"" creation_date, category: df, price_rate:f, style: fd, user: User.rand)
ArtPiece.create(title: f, artist: f, description, creation_date, category: df, price_rate:f, style: fd, user: User.rand)
ArtPiece.create(title: f, artist: f, description, creation_date, category: df, price_rate:f, style: fd, user: User.rand)
