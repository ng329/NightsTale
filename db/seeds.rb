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

User.destroy_all
Event.destroy_all

puts "creating users"
user1 = User.new(
  username: "Keith",
  email: "k.dawg@gmail.com",
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
Invitation.create(user_id: user2.id, friend_id: user5.id, confirmed: true)
Invitation.create(user_id: user2.id, friend_id: user6.id, confirmed: true)
Invitation.create(user_id: user2.id, friend_id: user7.id, confirmed: true)
Invitation.create(user_id: user2.id, friend_id: user8.id, confirmed: true)
Invitation.create(user_id: user2.id, friend_id: user9.id, confirmed: true)
Invitation.create(user_id: user2.id, friend_id: user10.id, confirmed: true)

puts "finished linking friends"

puts "scraping data"

puts "finished scraping"

puts "hand input data"

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
  description: "Professor James Moriarty invites you to celebrate the finest minds in London by solving his mysterious challenge, which he has personally prepared. Succeed, and he promises to make you an offer you can’t refuse...",
  tags: "Outdoor",
  url: "https://www.inthehiddencity.com/london/moriartys-game-the-professors-invitation",
  price_per_person: 25.00
)
file = URI.open("https://www.google.com/maps/place/Moriarty's+Game:+The+Professor's+Invitation+by+HiddenCity/@51.5198397,-0.1520172,3a,75y,90t/data=!3m8!1e2!3m6!1sAF1QipMV-AzaquhlpwKMW63U4qOWRg2lun92qHFhTVzZ!2e10!3e12!6shttps:%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMV-AzaquhlpwKMW63U4qOWRg2lun92qHFhTVzZ%3Dw138-h86-k-no!7i1890!8i1172!4m5!3m4!1s0x0:0x9a32bdaf1cd86616!8m2!3d51.5198896!4d-0.152025#")
event4.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event4.save

event5 = Event.new(
  name: "The Hunt for the Cheshire Cat",
  location: "91 Strand, London WC2R 0DW",
  description: "The Cheshire Cat is in London, and he wants you to find him. Solve his clues on an adventure into the strange, surreal and absurd - and uncover a dark conspiracy at the heart of Wonderland…",
  tags: "Outdoor",
  url: "https://www.inthehiddencity.com/london/the-hunt-for-the-cheshire-cat",
  price_per_person: 25.00
)
file = URI.open("https://www.google.com/maps/place/The+Hunt+for+the+Cheshire+Cat+by+HiddenCity/@51.5102228,-0.1212197,3a,75y,90t/data=!3m8!1e2!3m6!1sAF1QipPiQEHDTUuT69VviwqIJZaAoPkjVyyI9WvOL08a!2e10!3e12!6shttps:%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipPiQEHDTUuT69VviwqIJZaAoPkjVyyI9WvOL08a%3Dw114-h86-k-no!7i4032!8i3024!4m5!3m4!1s0x0:0x69c1aebe4dbd4de4!8m2!3d51.5103721!4d-0.1211373#")
event5.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event5.save

event6 = Event.new(
  name: "The Enchanted Mirror",
  location: "South Kensington Station Arcade, South Kensington, London",
  description: "Mirror, mirror on the wall… Embark on a fairytale quest to find the Enchanted Mirror and prove yourself the wisest of them all. But beware the tricks of a deceitful Queen, and the fate of those who fail...",
  tags: "Outdoor",
  url: "https://www.inthehiddencity.com/london/the-hunt-for-the-cheshire-cat",
  price_per_person: 25.00
)
file = URI.open("https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2013/12/12/1386830497013/SKen.jpg?width=300&quality=45&auto=format&fit=max&dpr=2&s=4d9ee3c3772c731ce391c9130b0106e7")
event6.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event6.save

event6 = Event.new(
  name: "Backyard Cinema",
  location: "2 Armoury Way, London, SW18 1SH",
  description: "The UK's most magical cinema is back, and this time, we're taking you on an Arctic voyage to the top of the world. Follow constellations of twinkling stars that will guide you to the Northern Lights and your giant beanbag, surrounded by snow topped trees to enjoy your favourite movies.",
  tags: "Cinema",
  url: "https://backyardcinema.co.uk/london/?filter=2022-10",
  price_per_person: 20.00
)
file = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/c7/1c/17/getlstd-property-photo.jpg?w=1200&h=-1&s=1")
event6.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event6.save

event7 = Event.new(
  name: "Monopoly Lifesized",
  location: "213 Tottenham Court Road, W1T 7PS",
  description: "Located in the heart of London, Monopoly Lifesized is an immersive, on-your-feet version of the world's favourite family game brand played on a 15m x 15m lifesized Monopoly board! Compete in one of a kind challenges for your chance to buy properties. Experience the thrill of trying to stage a heist in Mayfair, competing against a clock to build some of London’s iconic buildings, solving a baffling murder mystery or stepping into the world of codebreakers.",
  tags: "Gaming",
  url: "https://www.monopolylifesized.com/",
  price_per_person: 49.00
)
file = URI.open("https://jupiterhadley.com/wp-content/uploads/2021/09/IMG_8876.jpg")
event7.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event7.save

event8 = Event.new(
  name: "Jeff Wayne's The War of the Worlds",
  location: "56 Leadenhall Street, London, EC3A 2BJ",
  description: "Make lasting memories with friends and family as you journey through 24 interactive scenes where 12 live actors, state-of-the-art virtual reality and sensational 5D effects create a breath-taking experience - all with Jeff Wayne's multi-award double album of The War of the Worlds as your soundtrack. Come face to face with a 300 foot Martian Fighting Machines, sneak into a deserted Victorian house, sail out to sea and witness the battle between the Martians and HMS Thunder Child, and fly to Mars in a hot air balloon.  Experience a world beyond your own, and get ready to discover your greatest adventure yet.",
  tags: "Theatre",
  url: "https://www.thewaroftheworlds.com/",
  price_per_person: 40.00
)
file = URI.open("https://www.thewaroftheworlds.com/site/assets/files/3646/278485500_10158738298044290_6864718081938819132_n.510x510.jpeg")
event8.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event8.save

event9 = Event.new(
  name: "The Murder Express Part Deux",
  location: "Pedley Street Station, Arch 63, Pedley Street, London, E1",
  description: "The year is 1937, the height of the British Empire, and Britain's most famous archeologist, Dr. Errol Earhart, has unearthed the world's most valuable diamond, the Jewel of the Empire, which is being transported to the Von Cleethorpes estate via Pedley Street station's, Murdér Express. Along for the journey are a host of new characters, including the dashing Errol Earhart and the mysterious Miss Marie as well as some familiar faces. It's not long before the diamond is missing, bodies are beginning to pile up and the clock is ticking to catch a killer and recover the Jewel of the Empire. ",
  tags: "Food & Drink / Theatre",
  url: "https://www.funicularproductions.com/",
  price_per_person: 65.00
)
file = URI.open("https://static.designmynight.com/uploads/2019/05/Inspector2-optimised.png")
event9.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event9.save

event10 = Event.new(
  name: "Supercharged VR",
  location: "148 Tilbury Road, Leyton, London, E10 6RE",
  description: "Race with up to parties of 6 people. Get ready for intense (and hopefully fair) wheel to wheel battles as you try and assert your dominance on track using your race-craft! Only one person will be crowned champion!",
  tags: "Gaming",
  url: "https://www.supercharged-vr.co.uk/",
  price_per_person: 20.00
)
file = URI.open("https://static.designmynight.com/uploads/2022/05/New-profile1-optimised.jpg")
event10.photos.attach(io: file, filename: "event.jpg", content_type: "image/jpeg")
event10.save
puts "finished"
