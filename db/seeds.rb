require "open-uri"
#''
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Everything will get destroyed now'
ArtPiece.destroy_all
User.destroy_all
puts 'Destruction complete!'
puts 'Recreating stuff now...'
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             email: 'user1@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             email: 'user2@mailmail.com', password: '1234567')

categories = ['Paintings', 'Sculptures']

MTL_ADDRESSES = [
  '7503 Rue St Denis, Montreal QC',
  '251 Av Percival Montreal Ouest QC',
  '11727 Rue Notre Dame E, Montreal QC',
  '3708 Rue St Hubert, Montreal QC',
  '800 Rue Gagne Lasalle QC',
  '16 Saint-Viateur O., Montreal QC',
  '4107 Boulevard Saint-Laurent, Montreal QC',
  '5930 Rue Hurteau, Montreal QC',
  '6730 44 Av, Montreal QC',
  '1940 Jolicoeur Street, Montreal QC',
  '5240 Randall Av, Montreal QC',
  '3555 Edouard-Montpetit, Montreal QC',
  '12225 Av de Saint-Castin, Montreal QC',
  '391 Rue de la Congrégation, Montreal QC'
]

styles = ['Renaissance', 'Conceptual Art', 'Surreal', 'Post-Impressionism', 'Impressionist', 'Expressionist']
10.times do
  image = URI.open("https://source.unsplash.com/random/900x700/?artwork")
  artpiece = ArtPiece.new(
    title: Faker::Name.name,
    artist: Faker::Artist.name,
    description: Faker::Lorem.paragraph,
    creation_date: Faker::Date.in_date_period,
    category: categories.sample,
    address: Faker::Address.street_address,
    price_rate: (1..100).to_a.sample,
    style: styles.sample,
    user: User.first
  )
end

puts 'Recreation complete!'

david = ArtPiece.new(title: 'David', artist: 'Michelangelo', address: '391 Rue de la Congrégation, Montreal QC', description: 'David is a masterpiece of Renaissance
sculpture, created in marble between 1501 and 1504 by the Italian artist Michelangelo. David is a 5.17-metre
(17 ft 0 in) marble statue of the Biblical figure David, a favoured subject in the art of Florence.',
creation_date: '1501', category: 'Sculpture', price_rate:  5_000_000, style: 'Renaissance', user: User.first)
david_image = URI.open("https://en.wikipedia.org/wiki/David_(Michelangelo)#/media/File:Michelangelo's_David_-_right_view_2.jpg")
david.cloud_image.attach(io: david_image, filename: 'David.jpg', content_type: 'image/jpg')
david.save!

salvator = ArtPiece.new(title: 'Salvator Mundi', address: '12225 Av de Saint-Castin, Montreal QC', artist:'Leonardo da Vinci', description:
'The painting depicts Christ in an anachronistic blue Renaissance dress,
making the sign of the cross with his right hand, while holding a transparent,
non-refracting crystal orb in his left, signaling his role as Salvator Mundi
and representing the of the heavens.', category: 'Painting', price_rate: '$2,500,000',
style: 'Renaissance', user: User.first)
salvator_image = URI.open("https://en.wikipedia.
  org/wiki/Salvator_Mundi_(Leonardo)#/media/File:Leonardo_da_Vinci,_
  Salvator_Mundi,_c.1500,_oil_on_walnut,_45.4_%C3%97_65.6_cm.jpg")
  salvator.cloud_image.attach(io: salvator_image, filename: 'Sal.jpg', content_type: 'image/jpg')
  salvator.save!

card_players = ArtPiece.new(title: 'The Card Players', address: '11727 Rue Notre Dame E, Montreal QC', artist: 'Paul Cézanne', description: 'The Card Players is
a series of oil paintings
by the French Post-Impressionist artist Paul Cézanne. Painted during Cézannes final period in the early 1890s,
there are five paintings in the series. The versions vary in size,
the number of players, and the setting in which the game takes place.', creation_date: 1894, category: 'Painting', price_rate: 2_000_000, style: "Post-Impressionist",
user: User.first)
card_player_image = URI.open("https://en.wikipedia.org/wiki/The_Card_Players#/media/File:Les_Joueurs_de_cartes,_par_Paul_C%C3%A9zanne.jpg")
card_players.cloud_image.attach(io: card_player_image, filename: 'CP.jpg', content_type: 'image/jpg')
card_players.save!

scream = ArtPiece.new(title: "The Scream",  address: '16 Saint-Viateur O., Montreal QC', artist: "Edvard Munch", description: "The Scream is the popular
  name given to a composition created by Norwegian artist Edvard Munch in 1893. The agonized face in the painting has
  become one of the most iconic images of art, seen as symbolizing the anxiety of the human condition.",
  creation_date: 	1893, category: 'Proto-Expressionism', price_rate: 1_900_000, style:'Expressionist', user: User.first)
  scream_image = URI.open("https://upload.wikimedia.org/wikipedia/commons/c/c5/Edvard_Munch%2C_1893%2C_
    The_Scream%2C_oil%2C_tempera_and_pastel_on_cardboard%2C
    _91_x_73_cm%2C_National_Gallery_of_Norway.jpg")
scream.cloud_image.attach(io: scream_image, filename: 'scream.jpg', content_type: 'image/jpg')
scream.save!

sans_barbe = ArtPiece.new(title: "Portrait de l'artiste sans barbe",  address:'6730 44 Av, Montreal QC', artist: 'Vincent van Gogh', description:"Van Gogh's dozens
  of self-portraits were an important part of his œuvre as a painter. Most probably,
  van Gogh's self-portraits are depicting the face as it appeared in the mirror he
  used to reproduce his face,
  i.e. his right side in the image is in reality
  the left side of his face", creation_date: 1889, category: "Painting",
  price_rate: 1_800_000, style:"Impressionist", user: User.first)
  sans_barbe_image = URI.open('https://upload.wikimedia.org/wikipedia/commons/7/71/Vincent_Willem_van_Gogh_102.jpg')
  sans_barbe.cloud_image.attach(io: sans_barbe_image, filename: 'sans_barbe.jpg', content_type: 'image/jpg')
  sans_barbe.save!

garcon = ArtPiece.new(title: 'Garçon à la Pipe', artist: 'Pablo Picasso', address: '5930 Rue Hurteau, Montreal QC', description: "Garçon à la Pipe is an oil on canvas painting by Pablo Picasso.
 It was painted in 1905 when Picasso was 24 years old, during his Rose Period, soon after he settled in the Montmartre area of Paris.
  The painting depicts a Parisian adolescent boy who holds a pipe in his left hand and wears
 a garland of flowers on his head, surrounded by two floral decorations",
 creation_date: 1905, category: 'Painting', price_rate: 1_500_000,
 style: "Post-Impressionism", user: User.last)
 garcon_image = URI.open("https://en
 .wikipedia.org/wiki/Gar%C3%A7on_%C3%A0_la_pipe#/media/File:Gar%C3%A7on_%C3%A0_la_pipe.jpg")
 garcon.cloud_image.attach(io: garcon_image, filename: 'garcon.jpg', content_type: 'image/jpg')
 garcon.save!


gachet = ArtPiece.create(title: 'Portrait of Dr. Gachet',  address:  '251 Av Percival Montreal Ouest QC',artist: 'Vincent van Gogh', description:"Portrait of
  Dr. Gachet is one of the most revered paintings by the Dutch artist Vincent van Gogh.
  It depicts Dr. Paul Gachet, a homeopathic doctor and artist
  with whom van Gogh resided following a spell in an asylum at Saint-Rémy-de-Provence.",
  creation_date: 1890, category: "Painting", price_rate: 1_100_000, style: "Post-Impressionism", user: User.last,
  image_url: "https://upload.wikimedia.org/wikipedia/commons/1/1e/Portrait_of_Dr._Gachet.jpg")
 gachet_image = URI.open("https://www.artnews.com/wp-content/uploads/2019/04/unnamed-1.png")
  gachet.cloud_image.attach(io: gachet_image, filename: 'gachet.jpg', content_type: 'image/jpg')
  gachet.save!

  homme = ArtPiece.new(title: "L'Homme au doigt (Pointing Man)",  address: '1940 Jolicoeur Street, Montreal QC',artist: "Alberto Giacometti", description:"Passionate about sculpture
  being an act of carving, Italian sculptor Amedeo Modigliani carved Tête from a single block of
  limestone. It was sold for $59.5 million to a private collector in 2010.",
  creation_date: 1947, category: "Sculpture", price_rate: 950_000, style: "Surreal", user: User.last)

homme_image = URI.open = "https://vsemart.com/wp-content/uploads/2015/05/L%E2%80%99homme-
au-doigt-Pointing-Man-sold-for-126-million-or
-141.3-million-with-fees-in-Christies-May-11-2015.jpg"
  homme.cloud_image.attach(io: homme_image, filename: 'homme.jpg', content_type: 'image/jpg')
  homme.save!

  tete = ArtPiece.new(title: "Tête",  address: '800 Rue Gagne Lasalle QC', artist: 'Amedeo Modigliani', description:"Passionate about sculpture
  being an act of carving, Italian sculptor Amedeo Modigliani carved Tête from a single block of
  limestone. It was sold for $59.5 million to a private collector in 2010.",
  creation_date: 1910, category: "Sculpture", price_rate: 1_000_000, style: "Surreal", user: User.last)
  tete_image = URI.open("https://www.artnews.com/wp-content/uploads/2019/04/unnamed-1.png")
  tete.cloud_image.attach(io: tete_image, filename: 'tete_image.png', content_type: 'image/png')
  tete.save!


  balloon_dogs = ArtPiece.new(title: "Balloon Dogs" , address: '3555 Edouard-Montpetit, Montreal QC',artist: "Jeff Koons", description:"Jeff Koons is renowned
  for making .last replicas of banal, everyday objects. With a price tag of
  $58.4 million, the Balloon Dog by Jeff Koons is the most at which any sculpture
  from a living artist has ever sold!
  The orange Balloon Dog is one of six dogs made of polished stainless steel in various colours.",
  creation_date: 1994, category: "Sculpture", price_rate: 900_000, style: "Conceptual Art", user: User.last)

  balloon_dogs = URI.open("https://publicdelivery.org/wp-content/uploads/2017/02/Jeff-Koons-Balloon-Dog-Blue-1994
  -high-chromium-stainless-steel-transparent-
  color-coating-installation-view-Broad-Art-Foundation-LACMA-Los-Angeles.jpg")
  balloon_dogs.cloud_image.attach(io: balloon_dogs_image, filename: 'balloon_dogs.jpg', content_type: 'image/jpg')
  balloon_dogs.save!
