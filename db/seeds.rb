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
             image_url: "https://source.unsplash.com/random/?face?sig=123",
             email: 'user1@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             image_url: "https://source.unsplash.com/random/?face?sig=132",
             email: 'user2@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             image_url: "https://source.unsplash.com/random/?face?sig=143",
             email: 'user3@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             image_url: "https://source.unsplash.com/random/?face?sig=153",
             email: 'user4@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             image_url: "https://source.unsplash.com/random/?face?sig=423",
             email: 'user5@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             image_url: "https://source.unsplash.com/random/?face?sig=193",
             email: 'user6@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             image_url: "https://source.unsplash.com/random/?face?sig=183",
             email: 'user7@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             image_url: "https://source.unsplash.com/random/?face?sig=125",
             email: 'user8@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             image_url: "https://source.unsplash.com/random/?face?sig=129",
             email: 'user9@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             image_url: "https://source.unsplash.com/random/?face?sig=120",
             email: 'user10@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             image_url: "https://source.unsplash.com/random/?face?sig=199",
             email: 'user11@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             image_url: "https://source.unsplash.com/random/?face?sig=923",
             email: 'user12@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             image_url: "https://source.unsplash.com/random/?face?sig=523",
             email: 'user13@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             image_url: "https://source.unsplash.com/random/?face?sig=923",
             email: 'user14@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             image_url: "https://source.unsplash.com/random/?face?sig=223",
             email: 'user15@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             image_url: "https://source.unsplash.com/random/?face?sig=993",
             email: 'user16@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             image_url: "https://source.unsplash.com/random/?face?sig=853",
             email: 'user17@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             image_url: "https://source.unsplash.com/random/?face?sig=233",
             email: 'user18@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             image_url: "https://source.unsplash.com/random/?face?sig=553",
             email: 'user19@mailmail.com', password: '1234567')
User.create!(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             image_url: "https://source.unsplash.com/random/?face?sig=999",
             email: 'user20@mailmail.com', password: '1234567')

categories = ['Paintings', 'Sculptures']

styles = ['Renaissance', 'Conceptual Art', 'Surreal', 'Post-Impressionism', 'Impressionist', 'Expressionist']

david = ArtPiece.new(title: 'David', artist: 'Michelangelo', address: '391 Rue de la Congrégation, Montreal QC', description: 'David is a masterpiece of Renaissance
sculpture, created in marble between 1501 and 1504 by the Italian artist Michelangelo. David is a 5.17-metre
(17 ft 0 in) marble statue of the Biblical figure David, a favoured subject in the art of Florence.',
creation_date: '1501', category: 'Sculpture', price_rate:  5_000_000, style: 'Renaissance', user: User.all.sample)
david_image = URI.open("https://ca-times.brightspotcdn.com/dims4/default/13d0892/2147483647/strip/true/crop/1317x741+31+0/resize/1200x675!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F5f%2F42%2Fa4c1c8505270ee3fa59edfc9332d%2Fla-et-cm-michelangelo-david-statue-florence-20-001")
david.cloud_image.attach(io: david_image, filename: 'David.jpg', content_type: 'image/jpg')
david.save!

salvator = ArtPiece.new(title: 'Salvator Mundi', address: '12225 Av de Saint-Castin, Montreal QC',
artist:'Leonardo da Vinci', description:'The painting depicts Christ in an anachronistic blue Renaissance dress,
making the sign of the cross with his right hand, while holding a transparent,
non-refracting crystal orb in his left, signaling his role as Salvator Mundi
and representing the of the heavens.', creation_date: '1494', category: 'Painting', price_rate: 2_500_000,
style: 'Renaissance', user: User.all.sample)
salvator_image = URI.open("https://wp.en.aleteia.org/wp-content/uploads/sites/2/2019/07/web3-salvator-mundi-leonardo-da-vinci-wiki.jpg?w=960&crop=1")
  salvator.cloud_image.attach(io: salvator_image, filename: 'Sal.jpg', content_type: 'image/jpg')
  salvator.save!

card_players = ArtPiece.new(title: 'The Card Players', address: '11727 Rue Notre Dame E, Montreal QC', artist: 'Paul Cézanne', description: 'The Card Players is
a series of oil paintings
by the French Post-Impressionist artist Paul Cézanne. Painted during Cézannes final period in the early 1890s,
there are five paintings in the series. The versions vary in size,
the number of players, and the setting in which the game takes place.', creation_date: 1894, category: 'Painting', price_rate: 2_000_000, style: "Post-Impressionism",
user: User.all.sample)
card_player_image = URI.open("https://cdn.kastatic.org/ka-perseus-images/2039a38f6b6d1fe6733aae3d18baf9a014253728.jpg")
card_players.cloud_image.attach(io: card_player_image, filename: 'CP.jpg', content_type: 'image/jpg')
card_players.save!

scream = ArtPiece.new(title: "The Scream",  address: '16 Saint-Viateur O., Montreal QC', artist: "Edvard Munch", description: "The Scream is the popular
  name given to a composition created by Norwegian artist Edvard Munch in 1893. The agonized face in the painting has
  become one of the most iconic images of art, seen as symbolizing the anxiety of the human condition.",
  creation_date: 	1893, category: 'Painting', price_rate: 1_900_000, style:'Expressionist', user: User.all.sample)
  scream_image = URI.open("https://www.edvardmunch.org/images/paintings/the-scream.jpg")
scream.cloud_image.attach(io: scream_image, filename: 'scream.jpg', content_type: 'image/jpg')
scream.save!

sans_barbe = ArtPiece.new(title: "Portrait de l'artiste sans barbe",  address:'6730 44 Av, Montreal QC', artist: 'Vincent van Gogh', description:"Van Gogh's dozens
  of self-portraits were an important part of his œuvre as a painter. Most probably,
  van Gogh's self-portraits are depicting the face as it appeared in the mirror he
  used to reproduce his face,
  i.e. his right side in the image is in reality
  the left side of his face", creation_date: 1889, category: "Painting",
  price_rate: 1_800_000, style:"Impressionist", user: User.all.sample)
  sans_barbe_image = URI.open('https://upload.wikimedia.org/wikipedia/commons/7/71/Vincent_Willem_van_Gogh_102.jpg')
  sans_barbe.cloud_image.attach(io: sans_barbe_image, filename: 'sans_barbe.jpg', content_type: 'image/jpg')
  sans_barbe.save!

garcon = ArtPiece.new(title: 'Garçon à la Pipe', artist: 'Pablo Picasso', address: '5930 Rue Hurteau, Montreal QC', description: "Garçon à la Pipe is an oil on canvas painting by Pablo Picasso.
 It was painted in 1905 when Picasso was 24 years old, during his Rose Period, soon after he settled in the Montmartre area of Paris.
  The painting depicts a Parisian adolescent boy who holds a pipe in his left hand and wears
 a garland of flowers on his head, surrounded by two floral decorations",
 creation_date: 1905, category: 'Painting', price_rate: 1_500_000,
 style: "Post-Impressionism", user: User.all.sample)
 garcon_image = URI.open("https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/garcon-a-la-pipe-reproductions.jpg")
 garcon.cloud_image.attach(io: garcon_image, filename: 'garcon.jpg', content_type: 'image/jpg')
 garcon.save!


gachet = ArtPiece.new(title: 'Portrait of Dr. Gachet',  address:  '251 Av Percival Montreal Ouest QC',artist: 'Vincent van Gogh', description:"Portrait of
  Dr. Gachet is one of the most revered paintings by the Dutch artist Vincent van Gogh.
  It depicts Dr. Paul Gachet, a homeopathic doctor and artist
  with whom van Gogh resided following a spell in an asylum at Saint-Rémy-de-Provence.",
  creation_date: 1890, category: "Painting", price_rate: 1_100_000, style: "Post-Impressionism", user: User.all.sample)
 gachet_image = URI.open("https://upload.wikimedia.org/wikipedia/commons/1/1e/Portrait_of_Dr._Gachet.jpg")
  gachet.cloud_image.attach(io: gachet_image, filename: 'gachet.jpg', content_type: 'image/jpg')
  gachet.save!

  homme = ArtPiece.new(title: "L'Homme au doigt (Pointing Man)",  address: '1940 Jolicoeur Street, Montreal QC',artist: "Alberto Giacometti", description:"Passionate about sculpture
  being an act of carving, Italian sculptor Amedeo Modigliani carved Tête from a single block of
  limestone. It was sold for $59.5 million to a private collector in 2010.",
  creation_date: 1947, category: "Sculpture", price_rate: 950_000, style: "Surreal", user: User.all.sample)

homme_image = URI.open("https://vsemart.com/wp-content/uploads/2015/05/L%E2%80%99homme-au-doigt-Pointing-Man-sold-for-126-million-or-141.3-million-with-fees-in-Christies-May-11-2015.jpg")
  homme.cloud_image.attach(io: homme_image, filename: 'homme.jpg', content_type: 'image/jpg')
  homme.save!

  tete = ArtPiece.new(title: "Tête",  address: '800 Rue Gagne Lasalle QC', artist: 'Amedeo Modigliani', description:"Passionate about sculpture
  being an act of carving, Italian sculptor Amedeo Modigliani carved Tête from a single block of
  limestone. It was sold for $59.5 million to a private collector in 2010.",
  creation_date: 1910, category: "Sculpture", price_rate: 1_000_000, style: "Surreal", user: User.all.sample)
  tete_image = URI.open("https://www.artnews.com/wp-content/uploads/2019/04/unnamed-1.png")
  tete.cloud_image.attach(io: tete_image, filename: 'tete_image.png', content_type: 'image/png')
  tete.save!


  balloon_dogs = ArtPiece.new(title: "Balloon Dogs" , address: '3555 Edouard-Montpetit, Montreal QC', artist: "Jeff Koons", description:"Jeff Koons is renowned
  for making replicas of banal, everyday objects. With a price tag of
  $58.4 million, the Balloon Dog by Jeff Koons is the most at which any sculpture
  from a living artist has ever sold!
  The orange Balloon Dog is one of six dogs made of polished stainless steel in various colours.",
  creation_date: 1994, category: "Sculpture", price_rate: 900_000, style: "Conceptual Art", user: User.all.sample)

  balloon_dogs_image = URI.open("https://publicdelivery.org/wp-content/uploads/2017/02/Jeff-Koons-Balloon-Dog-Blue-1994-high-chromium-stainless-steel-transparent-color-coating-installation-view-Broad-Art-Foundation-LACMA-Los-Angeles.jpg")
  balloon_dogs.cloud_image.attach(io: balloon_dogs_image, filename: 'balloon_dogs.jpg', content_type: 'image/jpg')
  balloon_dogs.save!

  memory = ArtPiece.new(title: "The Persistence of Memory",
                        address:'4230 rue Levy, Montreal QC',
                        artist: 'Salvador Dali',
                        description:"The Persistence of Memory (1931) is one of the most iconic and recognizable paintings of Surrealism. You're guaranteed to amaze people with this!",
                        creation_date: 1931,
                        category: "Painting",
                        price_rate: 2_800_000,
                        style:"Surreal",
                        user: User.all.sample)
memory_image = URI.open('https://uploads6.wikiart.org/images/salvador-dali/the-persistence-of-memory-1931.jpg!Large.jpg')
memory.cloud_image.attach(io: memory_image, filename: 'memory.jpg', content_type: 'image/jpg')
memory.save!

gooseflesh = ArtPiece.new(title: "Inaugural Gooseflesh",
                          address:'2606 René-Lévesque Blvd, Montreal QC',
                          artist: 'Salvador Dali',
                          description:"This is one of Dali's most subtle but successful Surrealist Composition. Rent it for your surrealist parties!",
                          creation_date: 1928,
                          category: "Painting",
                          price_rate: 1_200_000,
                          style:"Surreal",
                          user: User.all.sample)
gooseflesh_image = URI.open('https://uploads5.wikiart.org/images/salvador-dali/inaugural-gooseflesh.jpg!Large.jpg')
gooseflesh.cloud_image.attach(io: gooseflesh_image, filename: 'gooseflesh.jpg', content_type: 'image/jpg')
gooseflesh.save!

venus = ArtPiece.new(title: "The Birth of Venus",
                    address:'4313 rue Ontario Ouest, Montreal QC',
                    artist: 'Boticelli',
                    description:"The painting was commissioned by Lorenzo di Pierfrancesco de’Medici, a cousin of Lorenzo the Magnificent. The theme was probably suggested by the humanist Poliziano. It depicts Venus born from the sea foam, blown by the west wind, Zephyr, and the nymph, Chloris, towards one of the Horai, who prepares to dress her with a flowered mantle.",
                    creation_date: 1483,
                    category: "Painting",
                    price_rate: 5_200_000,
                    style:"Renaissance",
                    user: User.all.sample)
venus_image = URI.open('https://artincontext.org/wp-content/uploads/2021/09/The-Birth-of-Venus-Botticelli-848x530.jpg')
venus.cloud_image.attach(io: venus_image, filename: 'venus.jpg', content_type: 'image/jpg')
venus.save!

magpie = ArtPiece.new(title: "The Magpie",
                    address:'3765 chemin Hudson, Montreal QC',
                    artist: 'Claude Monet',
                    description:"This painting shows the artist's mastery of capturing the effects of light on nature.",
                    creation_date: 1869,
                    category: "Painting",
                    price_rate: 1_100_000,
                    style:"Impressionist",
                    user: User.all.sample)
magpie_image = URI.open('https://www.worldhistory.org/img/r/p/750x750/15586.png.webp?v=1648653102')
magpie.cloud_image.attach(io: magpie_image, filename: 'magpie.jpg', content_type: 'image/jpg')
magpie.save!


cat = ArtPiece.new(title: "The Scream of the Cat",
                  address:'4812 Papineau Avenue, Montreal QC',
                  artist: 'Anonymous',
                  description:"A unique masterpiece that will keep your guests entertained. Rent it now!",
                  creation_date: 2022,
                  category: "Painting",
                  price_rate: 8_100_000,
                  style:"Surreal",
                  user: User.all.sample)
cat_image = URI.open('https://cherscholar.typepad.com/.a/6a00d8341d6c7753ef025d9b3bbeca200c-pi')
cat.cloud_image.attach(io: cat_image, filename: 'cat.jpg', content_type: 'image/jpg')
cat.save!

fountain = ArtPiece.new(title: "Fountain",
                        address:'5333 Casgrain, Montreal QC',
                        artist: 'March Duchamp',
                        description:"The Urinal photograph is really quite a wonder – Everyone who has seen it thinks it beautiful – And it’s true – it is. It has an oriental look about it – a cross between a Buddha and a veiled woman",
                        creation_date: 1917,
                        category: "Sculpture",
                        price_rate: 3_000_000,
                        style:"Conceptual Art",
                        user: User.all.sample)
fountain_image = URI.open('https://niood.es/wp-content/uploads/2021/10/marcel-duchamp-fountain-niood-1.jpeg')
fountain.cloud_image.attach(io: fountain_image, filename: 'cat.jpg', content_type: 'image/jpg')
fountain.save!



apple = ArtPiece.new(title: "The Son of Man",
                    address:'1401 rue de la Gauchetière, Montreal QC',
                    artist: 'René Magritte',
                    description:"Magritte painted The Son of Man as a self-portrait. The painting consists of a man in an overcoat and a bowler hat standing in front of a short wall, beyond which is the sea and a cloudy sky",
                    creation_date: 1964,
                    category: "Painting",
                    price_rate: 600_000,
                    style:"Surreal",
                    user: User.all.sample)
apple_image = URI.open('https://www.renemagritte.org/images/paintings/son-of-man.jpg')
apple.cloud_image.attach(io: apple_image, filename: 'apple.jpg', content_type: 'image/jpg')
apple.save!


puts 'Recreation complete!'
