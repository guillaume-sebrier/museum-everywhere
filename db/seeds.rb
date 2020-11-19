# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#  CATEGORY = ['Unusual collection', 'Design', 'Animals', 'Outdoors', 'Famous People Flat', 'Music', 'Gardens & plants', 'Objects', 'Others']
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

User.destroy_all

5.times do
  User.create!(email: Faker::Internet.email, password: Faker::Internet.password)
end

file = URI.open('https://res.cloudinary.com/gscloud/image/upload/v1605698122/jerome_tcyatv.jpg')
jerome = User.new(email: Faker::Internet.email, password: Faker::Internet.password, first_name:"Jerome")
jerome.photo.attach(io: file, filename: 'jerome.png', content_type: 'image/png')
jerome.save!

file = URI.open('https://res.cloudinary.com/gscloud/image/upload/v1605622917/retrogaming-collection-01-715x520_ut7pkv.jpg')
offer = Offer.new(title: "Retrogaming Collection", description: Faker::Restaurant.description, user: User.all.sample, price: 10, address: '16 villa Gaudelet, Paris', category: "Objects", duration: 30, capacity: 4)
offer.photos.attach(io: file, filename: 'retrogaming.png', content_type: 'image/png')
offer.save!

file = URI.open('https://res.cloudinary.com/gscloud/image/upload/v1605622916/toureiffelallumettes_x6dby9.jpg')
offer = Offer.new(title: "Matchbox models (including Tour Eiffel!!)", description: Faker::Restaurant.description, user: User.all.sample, price: 9, address: "12 avenue Wagram, Paris", category: "Unusual collection", duration: 45, capacity: 4)
offer.photos.attach(io: file, filename: 'matchbox.png', content_type: 'image/png')
offer.save!

file = URI.open('https://res.cloudinary.com/gscloud/image/upload/v1605622917/jardin-%C3%A0-la-fran%C3%A7aise-bassin-amiens-somme_dswmp9.jpg')
offer = Offer.new(title: "Splendid gardens", description: Faker::Restaurant.description, user: User.all.sample, price: 12, address: "12 avenue de Versailles, Paris", category: "Gardens & plants", duration: 45, capacity: 6)
offer.photos.attach(io: file, filename: 'garden.png', content_type: 'image/png')
offer.save!

file = URI.open('https://res.cloudinary.com/gscloud/image/upload/v1605622916/2098584_jep-visite-guidee-de-la-maison-jean-prouve-journees-du-patrimoine-2019_cschgz.jpg')
offer = Offer.new(title: "Jean Prouvé's flat", description: Faker::Restaurant.description, user: User.all.sample, price: 8, address: "12 rue des Renaudes, Paris", category: "Famous People Flat", duration: 60, capacity: 10)
offer.photos.attach(io: file, filename: 'prouve.png', content_type: 'image/png')
offer.save!

file = URI.open('https://res.cloudinary.com/gscloud/image/upload/v1605622916/collectionmaillotdefoot_z0d6ai.jpg')
offer = Offer.new(title: "Fabulous collection of soccer jerseys", description: Faker::Restaurant.description, user: User.all.sample, price: 11, address: "102 rue Etienne Marcel, Paris", category: "Objects", duration: 50, capacity: 5)
offer.photos.attach(io: file, filename: 'jersey.png', content_type: 'image/png')
offer.save!



offer = Offer.new(title: "Jerôme's short collection", description: "Come and enjoy the visit of the most impressive collection of short, bermudas and pantacourts of Paris with Jerome, a true passionate of this lifestyle", user: jerome, price: 4, address: "14 rue Crespin du Gast, Paris", category: "Unusual collection", duration: 30, capacity: 39)
file = URI.open('https://res.cloudinary.com/gscloud/image/upload/v1605697984/bermudas_pkptt2.jpg')
offer.photos.attach(io: file, filename: 'shorts.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/gscloud/image/upload/v1605698794/short-rouge-wawrinka-roland-garros-2015_r1tvrw.jpg')
offer.photos.attach(io: file, filename: 'shorts.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/gscloud/image/upload/v1605698788/wawrinka_yejzah.jpg')
offer.photos.attach(io: file, filename: 'shorts.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/gscloud/image/upload/v1605698804/pantacourt_qcsnio.jpg')
offer.photos.attach(io: file, filename: 'shorts.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/gscloud/image/upload/v1605698810/nadal_ef0pqi.jpg')
offer.photos.attach(io: file, filename: 'shorts.png', content_type: 'image/png')
offer.save!


