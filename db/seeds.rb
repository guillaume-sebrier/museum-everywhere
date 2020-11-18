# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Bookings.destroy_all
Offer.destroy_all
User.destroy_all

5.times do
  User.create!(email: Faker::Internet.email, password: Faker::Internet.password)
end

file = URI.open('https://res.cloudinary.com/gscloud/image/upload/v1605622917/retrogaming-collection-01-715x520_ut7pkv.jpg')
offer = Offer.new(title: "Retrogaming Collection", description: Faker::Restaurant.description, user: User.all.sample)
offer.photos.attach(io: file, filename: 'retrogaming.png', content_type: 'image/png')
offer.save!

file = URI.open('https://res.cloudinary.com/gscloud/image/upload/v1605622916/toureiffelallumettes_x6dby9.jpg')
offer = Offer.new(title: "Matchbox models (including Tour Eiffel!!)", description: Faker::Restaurant.description, user: User.all.sample)
offer.photos.attach(io: file, filename: 'matchbox.png', content_type: 'image/png')
offer.save!

file = URI.open('https://res.cloudinary.com/gscloud/image/upload/v1605622917/jardin-%C3%A0-la-fran%C3%A7aise-bassin-amiens-somme_dswmp9.jpg')
offer = Offer.new(title: "Splendid gardens", description: Faker::Restaurant.description, user: User.all.sample)
offer.photos.attach(io: file, filename: 'garden.png', content_type: 'image/png')
offer.save!

file = URI.open('https://res.cloudinary.com/gscloud/image/upload/v1605622916/2098584_jep-visite-guidee-de-la-maison-jean-prouve-journees-du-patrimoine-2019_cschgz.jpg')
offer = Offer.new(title: "Jean Prouvé's flat", description: Faker::Restaurant.description, user: User.all.sample)
offer.photos.attach(io: file, filename: 'prouve.png', content_type: 'image/png')
offer.save!

file = URI.open('https://res.cloudinary.com/gscloud/image/upload/v1605622916/collectionmaillotdefoot_z0d6ai.jpg')
offer = Offer.new(title: "Fabulous collection of soccer jerseys", description: Faker::Restaurant.description, user: User.all.sample)
offer.photos.attach(io: file, filename: 'jersey.png', content_type: 'image/png')
offer.save!
