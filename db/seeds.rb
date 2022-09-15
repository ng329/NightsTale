# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# require 'faker'
require "open-uri"
require 'json'
require 'rest-client'

puts "clear database"
User.destroy_all
Event.destroy_all
puts "finished clear"

puts "creating users"
user1 = User.new(
  username: "Edd",
  email: "e.shotton@gmail.com",
  password: "password",
  password_confirmation: "password"
)

file = URI.open("https://images.unsplash.com/photo-1518020382113-a7e8fc38eac9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60")
user1.photo.attach(io: file, filename: "profile_pic.jpg", content_type: "image/jpeg")
user1.save

user2 = User.new(
  username: "Bandit",
  email: "bandit@gmail.com",
  password: "password",
  password_confirmation: "password"
)

file = URI.open("https://images.unsplash.com/photo-1536164261511-3a17e671d380?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjF8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60")
user2.photo.attach(io: file, filename: "profile_pic.jpg", content_type: "image/jpeg")
user2.save

user3 = User.new(
  username: "Beth",
  email: "b.smith@gmail.com",
  password: "password",
  password_confirmation: "password"
)

file = URI.open("https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60")
user3.photo.attach(io: file, filename: "profile_pic.jpg", content_type: "image/jpeg")
user3.save

user4 = User.new(
  username: "Ghost",
  email: "g.smith@gmail.com",
  password: "password",
  password_confirmation: "password"
)

file = URI.open("https://images.unsplash.com/photo-1635107510862-53886e926b74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60")
user4.photo.attach(io: file, filename: "profile_pic.jpg", content_type: "image/jpeg")
user4.save

user5 = User.new(
  username: "Paul",
  email: "paul@gmail.com",
  password: "password",
  password_confirmation: "password"
)

file = URI.open("https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60")
user5.photo.attach(io: file, filename: "profile_pic.jpg", content_type: "image/jpeg")
user5.save

user6 = User.new(
  username: "Carol",
  email: "carol@gmail.com",
  password: "password",
  password_confirmation: "password"
)

file = URI.open("https://images.unsplash.com/photo-1616356257367-9cd4bf56a45e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODV8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60")
user6.photo.attach(io: file, filename: "profile_pic.jpg", content_type: "image/jpeg")
user6.save

user7 = User.new(
  username: "Rose",
  email: "rose@gmail.com",
  password: "password",
  password_confirmation: "password"
)

file = URI.open("https://images.unsplash.com/photo-1522307837370-cc113a36b784?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjB8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60")
user7.photo.attach(io: file, filename: "profile_pic.jpg", content_type: "image/jpeg")
user7.save

user8 = User.new(
  username: "Horatio",
  email: "horatio@gmail.com",
  password: "password",
  password_confirmation: "password"
)

file = URI.open("https://images.unsplash.com/photo-1586962358070-16a0f05b8e67?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjR8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60")
user8.photo.attach(io: file, filename: "profile_pic.jpg", content_type: "image/jpeg")
user8.save

user9 = User.new(
  username: "Lionheart",
  email: "l.heart@gmail.com",
  password: "password",
  password_confirmation: "password"
)

file = URI.open("https://images.unsplash.com/photo-1632922267756-9b71242b1592?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzN8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60")
user9.photo.attach(io: file, filename: "profile_pic.jpg", content_type: "image/jpeg")
user9.save

user10 = User.new(
  username: "Daisy",
  email: "daisy@gmail.com",
  password: "password",
  password_confirmation: "password"
)

file = URI.open("https://images.unsplash.com/photo-1510771463146-e89e6e86560e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njd8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60")
user10.photo.attach(io: file, filename: "profile_pic.jpg", content_type: "image/jpeg")
user10.save
puts "finished users"

puts "linking friends"
Invitation.create(user_id: user2.id, friend_id: user1.id, confirmed: true)
Invitation.create(user_id: user2.id, friend_id: user3.id, confirmed: true)
Invitation.create(user_id: user2.id, friend_id: user4.id, confirmed: true)
Invitation.create(user_id: user2.id, friend_id: user8.id, confirmed: true)
Invitation.create(user_id: user2.id, friend_id: user9.id, confirmed: true)
Invitation.create(user_id: user2.id, friend_id: user10.id, confirmed: true)

Invitation.create(user_id: user1.id, friend_id: user3.id, confirmed: true)
Invitation.create(user_id: user1.id, friend_id: user4.id, confirmed: true)
Invitation.create(user_id: user1.id, friend_id: user6.id, confirmed: true)
Invitation.create(user_id: user1.id, friend_id: user8.id, confirmed: true)
Invitation.create(user_id: user1.id, friend_id: user9.id, confirmed: true)
Invitation.create(user_id: user1.id, friend_id: user10.id, confirmed: true)

Invitation.create(user_id: user3.id, friend_id: user4.id, confirmed: true)
Invitation.create(user_id: user3.id, friend_id: user6.id, confirmed: true)
Invitation.create(user_id: user3.id, friend_id: user8.id, confirmed: true)
Invitation.create(user_id: user3.id, friend_id: user7.id, confirmed: true)
Invitation.create(user_id: user3.id, friend_id: user9.id, confirmed: true)
Invitation.create(user_id: user3.id, friend_id: user10.id, confirmed: true)

puts "finished linking friends"

puts "event hand input data"

event1 = Event.new(
  name: "Park Row",
  location: "77 Brewer Street, London W1F 9ZN",
  description: "Park Row is London's first DC inspired restaurant experience, created in partnersip with Warner Bros. consumer products and DC. It is part of the Wonderland Restaurant group, a rich melting pot of some of the finest creative minds and storytellers from the world of food, film and magic.",
  tags: "Food & Drink",
  url: "https://parkrowlondon.co.uk/",
  price_per_person: 34.00
)
file = URI.open("https://parkrowlondon.co.uk/wp-content/uploads/2021/08/gotham_interior_2-1024x683.jpg")
event1.photos.attach(io: file, filename: "park-row.jpg", content_type: "image/jpeg")
event1.save

event2 = Event.new(
  name: "Tomb Raider The Live Experience",
  location: "Camden Stables Market London NW1 8AH",
  description: "Lara Croft has arrived in Camden Market – and she needs your help! This interactive, immersive experience-meets-escape room is Camden Market’s newest adventure. Escape a sinking ship, explore the jungles of Costa Rica, discover an ancient tomb and battle a secret order in this adrenaline fuelled attraction, where you can become the hero.",
  tags: "Adventure",
  url: "https://www.tombraiderlive.co.uk/",
  price_per_person: 35.00
)
file = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/3f/3d/a4/tomb-raider-the-live.jpg?w=1200&h=-1&s=1")
event2.photos.attach(io: file, filename: "tomb-raider.jpg", content_type: "image/jpeg")
event2.save

event3 = Event.new(
  name: "Sherlock: The Offical Live Game",
  location: "London, W12 8PP",
  description: "Don your deerstalker and discover Sherlock: The Official Live Game - an exciting immersive adventure from the makers of the hit BBC TV series. Enter the world of Sherlock with immersive sets and environments from the show and work together as a team to solve mysteries and puzzles before time runs out. Play the detective in this exciting new case featuring original content from the stars of the show including Benedict Cumberbatch, Andrew Scott, Martin Freeman and more.",
  tags: "Escape Room",
  url: "https://www.thegameisnow.com/",
  price_per_person: 35.00
)
file = URI.open("https://static.designmynight.com/uploads/2021/04/KMWUyxw1-optimised.png")
event3.photos.attach(io: file, filename: "sherlock-game.jpg", content_type: "image/jpeg")
event3.save

event4 = Event.new(
  name: "Moriarty's Game",
  location: "The Marylebone Pub, 93 Marylebone High St, London W1U 4RE",
  description: "Professor James Moriarty invites you to celebrate the finest minds in London by solving his mysterious challenge, which he has personally prepared. Succeed, and he promises to make you an offer you can't refuse...",
  tags: "Outdoor",
  url: "https://www.inthehiddencity.com/london/moriartys-game-the-professors-invitation",
  price_per_person: 25.00
)
file = URI.open("https://www.culturewhisper.com/images/thumbs/cw-9283-660x375.jpg")
event4.photos.attach(io: file, filename: "hiddencity1.jpg", content_type: "image/jpeg")
event4.save

event5 = Event.new(
  name: "The Hunt for the Cheshire Cat",
  location: "91 Strand, London WC2R 0DW",
  description: "The Cheshire Cat is in London, and he wants you to find him. Solve his clues on an adventure into the strange, surreal and absurd - and uncover a dark conspiracy at the heart of Wonderland…",
  tags: "Outdoor",
  url: "https://www.inthehiddencity.com/london/the-hunt-for-the-cheshire-cat",
  price_per_person: 25.00
)
file = URI.open("https://www.culturewhisper.com/images/uploads/cw-22849.jpg")
event5.photos.attach(io: file, filename: "hiddencity2.jpg", content_type: "image/jpeg")
event5.save

event6 = Event.new(
  name: "The Enchanted Mirror",
  location: "South Kensington Station Arcade, South Kensington, London",
  description: "Mirror, mirror on the wall… Embark on a fairytale quest to find the Enchanted Mirror and prove yourself the wisest of them all. But beware the tricks of a deceitful Queen, and the fate of those who fail...",
  tags: "Outdoor",
  url: "https://www.inthehiddencity.com/london/the-enchanted-mirror",
  price_per_person: 25.00
)
file = URI.open("https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2013/12/12/1386830497013/SKen.jpg?width=300&quality=45&auto=format&fit=max&dpr=2&s=4d9ee3c3772c731ce391c9130b0106e7")
event6.photos.attach(io: file, filename: "hiddencity3.jpg", content_type: "image/jpeg")
event6.save

event7 = Event.new(
  name: "Backyard Cinema",
  location: "2 Armoury Way, London, SW18 1SH",
  description: "The UK's most magical cinema is back, and this time, we're taking you on an Arctic voyage to the top of the world. Follow constellations of twinkling stars that will guide you to the Northern Lights and your giant beanbag, surrounded by snow topped trees to enjoy your favourite movies.",
  tags: "Cinema",
  url: "https://backyardcinema.co.uk/london/",
  price_per_person: 20.00
)
file = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/c7/1c/17/getlstd-property-photo.jpg?w=1200&h=-1&s=1")
event7.photos.attach(io: file, filename: "backyardcinema.jpg", content_type: "image/jpeg")
event7.save

event8 = Event.new(
  name: "Monopoly Lifesized",
  location: "213 Tottenham Court Road, W1T 7PS",
  description: "Located in the heart of London, Monopoly Lifesized is an immersive, on-your-feet version of the world's favourite family game brand played on a 15m x 15m lifesized Monopoly board! Compete in one of a kind challenges for your chance to buy properties. Experience the thrill of trying to stage a heist in Mayfair, competing against a clock to build some of London’s iconic buildings, solving a baffling murder mystery or stepping into the world of codebreakers.",
  tags: "Gaming",
  url: "https://www.monopolylifesized.com/",
  price_per_person: 49.00
)
file = URI.open("https://jupiterhadley.com/wp-content/uploads/2021/09/IMG_8876.jpg")
event8.photos.attach(io: file, filename: "monopoly.jpg", content_type: "image/jpeg")
event8.save

event9 = Event.new(
  name: "Jeff Wayne's The War of the Worlds",
  location: "56 Leadenhall Street, London, EC3A 2BJ",
  description: "Make lasting memories with friends and family as you journey through 24 interactive scenes where 12 live actors, state-of-the-art virtual reality and sensational 5D effects create a breath-taking experience - all with Jeff Wayne's multi-award double album of The War of the Worlds as your soundtrack. Come face to face with a 300 foot Martian Fighting Machines, sneak into a deserted Victorian house, sail out to sea and witness the battle between the Martians and HMS Thunder Child, and fly to Mars in a hot air balloon.  Experience a world beyond your own, and get ready to discover your greatest adventure yet.",
  tags: "Theatre",
  url: "https://www.thewaroftheworlds.com/",
  price_per_person: 40.00
)
file = URI.open("https://www.thewaroftheworlds.com/site/assets/files/3646/278485500_10158738298044290_6864718081938819132_n.510x510.jpeg")
event9.photos.attach(io: file, filename: "warofworlds.jpg", content_type: "image/jpeg")
event9.save

event10 = Event.new(
  name: "The Murder Express Part Deux",
  location: "Pedley Street, Bethnal Green, London, E1 5BW",
  description: "The year is 1937, the height of the British Empire, and Britain's most famous archeologist, Dr. Errol Earhart, has unearthed the world's most valuable diamond, the Jewel of the Empire, which is being transported to the Von Cleethorpes estate via Pedley Street station's, Murdér Express. Along for the journey are a host of new characters, including the dashing Errol Earhart and the mysterious Miss Marie as well as some familiar faces. It's not long before the diamond is missing, bodies are beginning to pile up and the clock is ticking to catch a killer and recover the Jewel of the Empire. ",
  tags: "Theatre",
  url: "https://www.funicularproductions.com/",
  price_per_person: 65.00
)
file = URI.open("https://static.designmynight.com/uploads/2019/05/Inspector2-optimised.png")
event10.photos.attach(io: file, filename: "murderexpress.jpg", content_type: "image/png")
event10.save

event11 = Event.new(
  name: "Supercharged VR",
  location: "148 Tilbury Road, Leyton, London, E10 6RE",
  description: "Race with up to parties of 6 people. Get ready for intense (and hopefully fair) wheel to wheel battles as you try and assert your dominance on track using your race-craft! Only one person will be crowned champion!",
  tags: "Gaming",
  url: "https://www.supercharged-vr.co.uk/",
  price_per_person: 20.00
)
file = URI.open("https://static.designmynight.com/uploads/2022/05/New-profile1-optimised.jpg")
event11.photos.attach(io: file, filename: "supercharge.jpg", content_type: "image/jpeg")
event11.save

event12 = Event.new(
  name: "Alcotraz: Cell Block Two-One-Two",
  location: "212, Brick Lane, London, E1 6SA",
  description: "nspired by Hollywood Movies and TV that have brought to life America's most infamous prison, Alcotraz is London's first immersive theatrical cocktail bar. From the orange jumpsuits upon entrance, to the real metallic cells, Alcotraz becomes the perfect backdrop to enjoy a drink within an epic yet intimate environment. When convicted to Alcotraz, inmates are taken into an exciting world of mischief as they are instructed by notorious bootleggers on the inside to smuggle-in liquor to be used to make delicious, bespoke cocktails. ",
  tags: "Food & Drink",
  url: "https://www.alcotraz.co.uk/locations/london/",
  price_per_person: 35.00
)
file = URI.open("https://media.timeout.com/images/105869525/750/422/image.jpg")
event12.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event12.save

event13 = Event.new(
  name: "The Grid",
  location: "2 Robinson Road, Southwark, SE1 8BU",
  description: "oin our secret undercover operation to learn and operate Artificial Intelligence tools, drink futuristic sci-fi potions (yes, cocktails!) and eventually defeat the system for the betterment of humanity's future. ",
  tags: "Escape Room",
  url: "https://www.thegrid.london/",
  price_per_person: 32.00
)
file = URI.open("https://images.squarespace-cdn.com/content/v1/5b33be503917eef6cfc13ae5/1555831954859-FSUOV7C5EFAQZD5QXQZL/image-asset.jpeg")
event13.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event13.save

event14 = Event.new(
  name: "The Gunpowder Plot",
  location: "8-12 Tower Hill Vaults, Tower Hill, London, EC3N 4EE",
  description: "London, 1605. A city divided. The fuse of rebellion is lit. The peace of the nation balances on a knife edge... Step into a world where spies and informants hide in every shadow. Your mission is to go undercover and unmask the mysterious figures behind history’s most infamous plot. But when you’re surrounded by ‘traitors’ who can you trust?",
  tags: "Theatre",
  url: "https://gunpowderimmersive.com/",
  price_per_person: 45.00
)
file = URI.open("https://media.timeout.com/images/105900432/image.jpg")
event14.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event14.save

event15 = Event.new(
  name: "The Candlelit Club",
  location: "16 Kemsing Rd, London SE10 0LL",
  description: "The Candlelight Club is a clandestine pop-up party with a 1920s speakeasy flavour, in a secret London venue lit by candles. You'll be whisked away to the Gatsby era with a heady mix of live jazz music, vintage vinylism, delicious cocktails and a party crowd all dressed up in their finest 1920's outfits, inhibitions loosened away from the prying eyes of Prohibition agents.",
  tags: "Food & Drink",
  url: "https://www.thecandlelightclub.com/",
  price_per_person: 25.00
)
file = URI.open("https://static.designmynight.com/uploads/2016/07/IMG_5423enb-1MED-1200x724-optimised.jpg")
event15.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event15.save

event16 = Event.new(
  name: "Moonshine Saloon",
  location: "Houndsditch, London, EC3A 7DB",
  description: "A visit to Moonshine Saloon will see you become a part of the story as you bring your own liquor and become the beating heart of a covert liquor operation led by the self-styled King of the Moonshiners, and Wanted Man, Clyde Cassidy. With the Law previously coming close to catching Cassidy, the Saloon makes the perfect meet-point for new outlaws to join the gang and learn the art of smuggling and supplying illicit liquor during the Great American Frontier. Within the Saloon, outlaws can rub shoulders with the local's, try their luck at card or dice games or perhaps be trusted enough to receive a close-up inspection of Cassidy's notorious Moonshine Distillery. ",
  tags: "Food & Drink",
  url: "https://www.moonshinesaloon.com/",
  price_per_person: 37.00
)
file = URI.open("https://www.moonshinesaloon.com/wp-content/uploads/2021/01/Private-Hire.jpg")
event16.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event16.save

event17 = Event.new(
  name: "Faulty Towers The Dining Experience",
  location: "60 Guilford Street, London, WC1N 1DB",
  description: "Chaos reigns as soon as you walk through the door in this fully immersive show where you become diners, served by Basil, Sybil and Manuel. Join them for lashings of laughter, huge spoonfuls of spontaneity, plenty of participation, and a 3-course meal. A true blend of ingenious comedy, a unique theatrical script and heaps of improvisation, this multi-sensory experience is perfect for comedy fans, theatre fanatics and anyone who fancies a dinner they will never forget.",
  tags: "Food & Drink",
  url: "https://www.interactivetheatre.com.au/faulty-towers-the-dining-experience/",
  price_per_person: 65.00
)
file = URI.open("https://www.londonboxoffice.co.uk/images/shows/production/original/24429-1645118695-ft2wl.png")
event17.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event17.save

event18 = Event.new(
  name: "Plonk",
  location: "407 Mentmore Terrace, London E8 3PP",
  description: "Our outdoor crazy golf course and games bar is on the edge of London Fields Hackney, just across the park from Broadway Market. This 9 hole mini golf course has some of our favourite golfstacles, brought together in our cosy private garden.",
  tags: "Adventure",
  url: "https://www.plonkgolf.co.uk/",
  price_per_person: 12.50
)
file = URI.open("https://www.plonkgolf.co.uk/wp-content/uploads/2022/05/294A5607_Web_2.jpg")
event18.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event18.save

event19 = Event.new(
  name: "Hyper Reality",
  location: "67 Mile End Rd, Bethnal Green, London E1 4TT",
  description: "Cyberpunk immersive entertainment venue and bar in the heart of East London. The venue spans across The Arena, The Place with No Name, The Rollercoaster, The Go-Kart which offers next level VR experiences with exclusive titles for 1 to 4 players. A Tokyo inspired The Lounge space hosts our retro-gaming and board games. Finally, The Club hosts a secret 270 degree mural equipped with a projector for private screening, gaming or karaoke.",
  tags: "Gaming",
  url: "https://hyper-reality.io/",
  price_per_person: 15.00
)
file = URI.open("https://static.designmynight.com/uploads/2020/02/Hyper-Reality51-optimised.jpg")
event19.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event19.save

event20 = Event.new(
  name: "Locked in a Room",
  location: "ExCeL London, Royal Victoria Docks, E16 1XL",
  description: "Very few activities immerse you in a world where you think of nothing except the task at hand. Locked In A Room does. It’s unique, it’s fantastic fun, it’s challenging, it’s pure escapism. You may be surprised on how well you automatically pull together in a unified team in unlocking the key to escape!",
  tags: "Escape Room",
  url: "https://lockedinaroom.co.uk/london",
  price_per_person: 25.00
)
file = URI.open("https://cdn.thelondoneconomic.com/wp-content/uploads/2016/03/Lockd3.jpg")
event20.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event20.save

event21 = Event.new(
  name: "Rooftop Film Club",
  location: "133 Rye Ln, London SE15 4ST",
  description: "aking cinema up a level. We are on the rooftop of the Bussey Building, just two minutes walk from Peckham Rye station. We are back this summer for another film-filled season of classic, cult and recent releases on the finest rooftops. Film lovers are able to eat fabulous food, enjoy cold drinks and watch their favourite movies on the big screen as the stars begin to sparkle, this really is an incomparable film experience in the fresh air of a warm summer's night.",
  tags: "Cinema",
  url: "https://rooftopfilmclub.com/london/",
  price_per_person: 17.00
)
file = URI.open("https://rooftopfilmclub.com/wp-content/uploads/2020/03/Bussey-3-1080x650-1.jpg")
event21.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event21.save

event22 = Event.new(
  name: "The Great Gatsby",
  location: "56 Davies St, London W1K 5HR",
  description: "Step into the Roaring Twenties as F. Scott Fitzgerald’s The Great Gatsby is brought to life in this immersive theatre show. Put on your best 1920s-inspired outfit and join the fun as you're led through Jay Gatsby’s store into one of his infamous parties in this interactive performance.",
  tags: "Theatre",
  url: "https://immersivegatsby.com/event/the-great-gatsby",
  price_per_person: 43.00
)
file = URI.open("https://www.telegraph.co.uk/content/dam/theatre/2020/10/22/TELEMMGLPICT000240733195_trans_NvBQzQNjv4BqOHNs0Y5vwBZmXiYbjSVrpEYcUoJO3J81ok5AhMQWcTU.jpeg")
event22.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event22.save

event23 = Event.new(
  name: "The Burnt City",
  location: "1 Cartridge Place, Woolwich, London",
  description: "As Greece teeters on the brink of victory, the neon backstreets of Downtown Troy give way to a sprawling labyrinth hiding secrets even the prophecies could not foretell. In this colossal playground, the furies watch on as mortals play out their fate. And as night falls, the city comes alive. One last time.",
  tags: "Theatre",
  url: "https://onecartridgeplace.com/theburntcity/",
  price_per_person: 75.00
)
file = URI.open("https://www.punchdrunk.com/content/uploads/2021/09/TheCityComesAlive-Img.jpg")
event23.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event23.save

event24 = Event.new(
  name: "Jurassic World: The Exhibition",
  location: "Excel Centre, London, E16 1XL",
  description: "Board the ferry to Isla Nublar and walk across the massive Jurassic World gates. Walk under a majestic Brachiosaurus, come face-to-face with ferocious raptors, and get a rare up-close look at the most vicious dinosaur of them all, the Tyrannosaurus rex.",
  tags: "Adventure",
  url: "https://jurassicworldexhibition.com/uk/",
  price_per_person: 15.00
)
file = URI.open("https://i.ytimg.com/vi/AfPiH0SEoGg/maxresdefault.jpg")
event24.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event24.save

event25 = Event.new(
  name: "Mamma Mia The Party",
  location: "02 Peninsula Square, London SE10 0DX",
  description: "Step onto Skopelos and discover a blossoming new story, with an English book by comedian Sandi Toksvig. Meet Nikos, Kate, Adam, and Konstantina as they navigate family life in the taverna, all as the sun sets over the Mediterranean. Find yourself lost in a fabulous world as a warm, romantic and funny story is performed all around you. Explore the glorious decor, which served as the backdrop to the iconic movies, and now dazzles guests.",
  tags: "Food & Drink",
  url: "https://mammamiatheparty.co.uk/",
  price_per_person: 90.00
)
file = URI.open("https://mammamiatheparty.co.uk/wp-content/uploads/2022/04/GrantWalker-199-scaled.jpg")
event25.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event25.save

event26 = Event.new(
  name: "Stranger Things The Experience",
  location: "Brent Cross, London NW2 1LW",
  description: "our chance has arrived. Stranger Things: The Experience throws you headfirst into your favorite show —join Eleven, Dustin, Mike, Lucas, Max, and Will for a very special episode starring… you! Venture inside Hawkins Lab for a 1-hour immersive experience featuring a brand-new Stranger Things storyline, then explore an 80’s-themed Mix-Tape medley with food & drinks, special merchandise, photo ops, and much more.",
  tags: "Cinema",
  url: "https://strangerthings-experience.com/london/",
  price_per_person: 45.00
)
file = URI.open("https://helios-i.mashable.com/imagery/articles/03Q4T1UfK4nPDwyLeeY9WeQ/hero-image.fill.size_1200x1200.v1661364532.jpg")
event26.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event26.save

event27 = Event.new(
  name: "Peaky Blinders: The Rise",
  location: "North Yard, London NW1 8AH",
  description: "921, London. Crime boss Tommy Shelby personally invites you to his family’s Camden warehouse to share an expansion plan that could prove lucrative for everyone. In other words, a night of celebration is in order! Whether you kick back in the pub, advise on business affairs in the office or conspire with the Italians in the cabaret lounge, how the family meeting goes is up to you. Just keep your eyes open and your ear to the ground, because Tommy’s enemies are closer than you think...",
  tags: "Theatre",
  url: "https://www.immersivepeakyblinders.com/",
  price_per_person: 60.00
)
file = URI.open("https://thenudge.com/wp-content/uploads/2021/12/8.-PEAKY-BLINDERS-THE-RISE.-Isaac-Beechey-John-Shelby.-Photo-Mark-Senior-scaled.jpg")
event27.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event27.save

event28 = Event.new(
  name: "City of Spies",
  location: "St James’s Park Underground Station ",
  description: "Immerse yourself in the cloak & dagger world of the second oldest profession in the world – Espionage! Learn of the dirty tricks, false flags and Black Ops then sip a Vodka Martini with your spy expert in a secret Whitehall bar before enjoying dinner. You are going on a journey into the devious world of subterfuge and infiltration in the birthplace of professional espionage!",
  tags: "Outdoor",
  url: "https://imaginexperiences.com/city-of-spies-experience/",
  price_per_person: 85.00
)
file = URI.open("https://vedcdn.imgix.net/images/product/main/immersive-spy-mission-28095737.jpg")
event28.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event28.save

event29 = Event.new(
  name: "Swingers",
  location: "8 Brown's Buildings, London EC3A 8AL",
  description: "At Swingers you’ll enjoy crazy golf, stunning cocktails, London’s best street-food vendors, beautiful bars and DJs. There’s no dress code, ban on mobiles or penalties for going out of turn. Unless you’re at the bar.",
  tags: "Gaming",
  url: "https://swingers.club/uk/crazy-golf",
  price_per_person: 11.00
)
file = URI.open("https://swingerscmsstoragelive.blob.core.windows.net/public-content/Dynamic%20Images/Original/Windmill%20Course.jpg")
event29.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event29.save

event30 = Event.new(
  name: "Four Quarters Arcade Bar",
  location: "Unit 8, Canalside, London E20 3BS",
  description: "Four Quarters East opened in Feb 2017 as an arcade bar in East London. It boasts not only a fine selection of video games, but a canal-side location with a sun-drenched beer garden in Hackney Wick. Perfect for summer afternoons. Alongside 20 beautifully restored original arcade cabinets, Four Quarters East also has three incredibly popular, bookable console booths with the likes of Super Nintendo, Sega Dreamcast and Nintendo 64 to battle your mates on! From Space Invaders and vintage Pacman to classic Nintendo & Sony consoles, it’s all about nostalgia.",
  tags: "Gaming",
  url: "https://fourquarters.bar/location/arcade-bar-east-london/",
  price_per_person: 10.00
)
file = URI.open("https://media.timeout.com/images/105080365/image.jpg")
event30.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event30.save

# event = Event.new(
#   name: "",
#   location: "",
#   description: "",
#   tags: "",
#   url: "",
#   price_per_person: 0
# )
# file = URI.open("")
# event.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
# event.save

puts "finished events"

puts "adding favourites"
Favourite.create(user: user1, event: event1)
Favourite.create(user: user1, event: event2)
Favourite.create(user: user1, event: event3)
Favourite.create(user: user1, event: event4)
Favourite.create(user: user1, event: event11)
Favourite.create(user: user1, event: event13)
Favourite.create(user: user1, event: event14)
Favourite.create(user: user1, event: event19)

Favourite.create(user: user2, event: event2)
Favourite.create(user: user2, event: event4)
Favourite.create(user: user2, event: event3)
Favourite.create(user: user2, event: event9)
Favourite.create(user: user2, event: event10)
Favourite.create(user: user2, event: event23)
Favourite.create(user: user2, event: event15)
Favourite.create(user: user2, event: event18)

Favourite.create(user: user3, event: event2)
Favourite.create(user: user3, event: event7)
Favourite.create(user: user3, event: event8)
Favourite.create(user: user3, event: event11)
Favourite.create(user: user3, event: event9)
Favourite.create(user: user3, event: event12)
Favourite.create(user: user3, event: event21)
Favourite.create(user: user3, event: event30)

Favourite.create(user: user4, event: event2)
Favourite.create(user: user4, event: event1)
Favourite.create(user: user4, event: event4)
Favourite.create(user: user4, event: event5)
Favourite.create(user: user4, event: event10)
Favourite.create(user: user4, event: event13)
Favourite.create(user: user4, event: event26)
Favourite.create(user: user4, event: event30)

Favourite.create(user: user5, event: event2)
Favourite.create(user: user5, event: event5)
Favourite.create(user: user5, event: event11)
Favourite.create(user: user5, event: event8)
Favourite.create(user: user5, event: event9)
Favourite.create(user: user5, event: event21)
Favourite.create(user: user5, event: event15)
Favourite.create(user: user5, event: event22)

Favourite.create(user: user6, event: event10)
Favourite.create(user: user6, event: event2)
Favourite.create(user: user6, event: event6)
Favourite.create(user: user6, event: event8)
Favourite.create(user: user6, event: event9)
Favourite.create(user: user7, event: event26)
Favourite.create(user: user7, event: event18)
Favourite.create(user: user7, event: event30)

Favourite.create(user: user7, event: event2)
Favourite.create(user: user7, event: event10)
Favourite.create(user: user7, event: event3)
Favourite.create(user: user7, event: event4)
Favourite.create(user: user7, event: event7)
Favourite.create(user: user7, event: event23)
Favourite.create(user: user7, event: event22)
Favourite.create(user: user7, event: event27)

Favourite.create(user: user8, event: event1)
Favourite.create(user: user8, event: event6)
Favourite.create(user: user8, event: event7)
Favourite.create(user: user8, event: event8)
Favourite.create(user: user8, event: event9)
Favourite.create(user: user8, event: event20)
Favourite.create(user: user8, event: event16)
Favourite.create(user: user8, event: event29)

Favourite.create(user: user9, event: event1)
Favourite.create(user: user9, event: event2)
Favourite.create(user: user9, event: event3)
Favourite.create(user: user9, event: event4)
Favourite.create(user: user9, event: event6)
Favourite.create(user: user9, event: event21)
Favourite.create(user: user9, event: event22)
Favourite.create(user: user9, event: event26)

Favourite.create(user: user10, event: event7)
Favourite.create(user: user10, event: event8)
Favourite.create(user: user10, event: event9)
Favourite.create(user: user10, event: event11)
Favourite.create(user: user10, event: event1)
Favourite.create(user: user10, event: event20)
Favourite.create(user: user10, event: event25)
Favourite.create(user: user10, event: event23)
puts "finished favourties"

puts "adding reviews"
Review.create(user: user2, event: event1, content: "I had the pleasure of going twice and it was incredible. If you're a DC / Batman fan this restaurant is for you. The ambience is amazing, themed cocktails very instagramable and food was delicious.", rating: 5)
Review.create(user: user6, event: event1, content: "Fantastic dinner! Great food, delicious cocktails and excellent service. The atmosphere and ambience is amazing. Live music, and cool decor with a subtle DC/Batman theme.", rating: 4)

Review.create(user: user8, event: event2, content: "I could not recommend this experience enough! Booked it with a couple of friends, not knowing what to expect but had read that it was from the same people that created the crystal maze live experience which was also spectacular, so was hopeful it would reach those heights. It did not disappoint!", rating: 4)

Review.create(user: user10, event: event3, content: "Loved our Sherlock escape room experience - very clever set up, welcoming staff and fun (but tricky) challenges. Quite tough for 2 people as lots to do, but it certainly kept us occupied, and there is a bar you unwind in afterwards. The theming and atmosphere is outstanding, and there are extensive appearances from some very recognisable faces! Would thoroughly recommend to anyone likes this sort of experience.", rating: 3)

Review.create(user: user6, event: event3, content: "We came here for my birthday and I cannot recommend the experience highly enough for fans of BBC Sherlock. It's incredibly immersive, from the moment you step through the front door, to the very end, and there are so many little details that can be picked up by fans of the show, so make sure you keep your eyes peeled!", rating: 5)

Review.create(user: user8, event: event4, content: "Spent the whole day following clues and puzzles around a small area of London. Lots of good spots to stop and have a drink or some food along the way too. Some puzzles we felt confident about but others required a little more thinking but weren't impossible, all the clues were really thought out though and followed a good theme.", rating: 3)

Review.create(user: user5, event: event5, content: "It was very enjoyable solving the clues whilst seeing lots of London’s quirky backstreets and sights you wouldn’t normally get to see. It was great to start & end in a pub for food & drink supplies. We thought it was well thought out, hard to begin with but loved the challenges.", rating: 4)

Review.create(user: user1, event: event5, content: "It's a great way to explore parts of the city you've never seen before, while testing your brain with some sneaky, and some easy clues! Our group were different ages, and there was something for everyone.", rating: 4)

Review.create(user: user8, event: event6, content: "It was great to discover new places that we've never visited before while solving the puzzles in this game. It's well designed and good fun; we took about 4 hours in total because we took the full time allocated to the optional rest stops which were all in great venues. I would definitely recommend this as an activity whilst in London!", rating: 5)

Review.create(user: user9, event: event7, content: "Two major problems - really delayed food and no experience! Apparently there was supposed to be a performance before the movie... but an entire group of ~15 people missed it due to the chaos.", rating: 2)

Review.create(user: user3, event: event7, content: "This was a 10/10 experience! Loved the Christmas concept and the staff were all so friendly x drinks and food were good and you didn’t feel rushed through the experience x loved it, would defiantly visit again!", rating: 4)

Review.create(user: user8, event: event8, content: "I didn’t expect it to be this fun but OMG this was one of the best experiences I’ve had this year. We were so lucky to have IRON GOSLING as our host who was fun and had super positive energy which made the experience so much better. I would definitely do this again but on another board.", rating: 5)

Review.create(user: user5, event: event8, content: "From the moment we arrived at the front door the staff were very friendly and welcoming. The game itself would of been great fun and the tokens were fantastic actors. But the overall experience was awful. It was such a shame but I feel the experience was so very rushed from the moment you go into the game room, it was spoilt because you don’t have time to enjoy any of the experience.", rating: 1)

Review.create(user: user7, event: event9, content: "Great experience with fabulous actors. If there was 6 stars I’d give them. A little frightening but was always made feel safe. The only little niggle is I wished they played more of the music in the restaurant whilst we were waiting.", rating: 5)

Review.create(user: user4, event: event10, content: "This is such a good night out- the food, the actors, drinks, everything! The acting from Clare was great! Do I sense a feel of Peaky Blinders from her?? (LOVE THAT SHOW) Contemplating going back here with friends soon, yea it is that good!", rating: 5)

Review.create(user: user6, event: event10, content: "This is by FAR our FAVOURITE immersive event! Everyone was amazing but huge shoutout to the Clare Sloane who plays the French Madame and also Phil who played the French detective! Great ambience, great food, great production, great personalities- we will be back!", rating: 5)

Review.create(user: user9, event: event11, content: "Very welcoming, informative and well organised. Excellent experience and very realistic. Would recommend to anyone who loves motor racing.", rating: 3)
puts "finished reviews"

puts "all done"
