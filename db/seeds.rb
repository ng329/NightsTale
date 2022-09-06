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

puts "finished users"

puts "scraping data"

puts "finished scraping"

puts "hand input data"

event1 = Event.new(
  name: "Park Row",
  location: "77 Brewer Street, London W1F 9ZN",
  description: "Park Row is London's first DC inspired restaurant experience, created in partnersip with Warner Bros. consumer products and DC. It is part of the Wonderland Restaurant group, a rich melting pot of some of the finest creative minds and storytellers from the world of food, film and magic.",
  # tags: "Food & Drink",
  url: "https://parkrowlondon.co.uk/",
  price_per_person: 34.00
)
file = URI.open("https://parkrowlondon.co.uk/wp-content/uploads/2021/08/gotham_interior_2-1024x683.jpg")
event1.photos.attach(io: file, filename: "park-row.jpg", content_type: "image/jpeg")
event1.save

event2 = Event.new(
  name: "Tomb Raider The Live Experience",
  location: "Camden Stables Market Lower Basement & Upper Basement Atrium London NW1 8AH",
  description: "Lara Croft has arrived in Camden Market – and she needs your help! This interactive, immersive experience-meets-escape room is Camden Market’s newest adventure. Escape a sinking ship, explore the jungles of Costa Rica, discover an ancient tomb and battle a secret order in this adrenaline fuelled attraction, where you can become the hero.",
  # tags: "Adventure",
  url: "https://www.tombraiderlive.co.uk/",
  price_per_person: 35.00
)
file = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/3f/3d/a4/tomb-raider-the-live.jpg?w=1200&h=-1&s=1")
event2.photos.attach(io: file, filename: "tomb-raider.jpg", content_type: "image/jpeg")
event2.save

event3 = Event.new(
  name: "Sherlock: The Offical Live Game",
  location: "Doyles Opticians, Ground Floor,, W12 Shopping Centre, Shepherd's Bush,, London, W12 8PP",
  description: "Don your deerstalker and discover Sherlock: The Official Live Game - an exciting immersive adventure from the makers of the hit BBC TV series. Enter the world of Sherlock with immersive sets and environments from the show and work together as a team to solve mysteries and puzzles before time runs out. Play the detective in this exciting new case featuring original content from the stars of the show including Benedict Cumberbatch, Andrew Scott, Martin Freeman and more.",
  # tags: "Escape Room",
  url: "https://www.thegameisnow.com/",
  price_per_person: 35.00
)
file = URI.open("https://static.designmynight.com/uploads/2021/04/KMWUyxw1-optimised.png")
event3.photos.attach(io: file, filename: "sherlock-game.jpg", content_type: "image/jpeg")
event3.save

puts "finished"
