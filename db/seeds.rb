# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create!(email: "email@test.com", password: 'passwordtest')
user2 = User.create!(email: "email2@test.com", password: 'passwordtest2')


Offer.create!(title:"Collection de shorts", description: "bla", user: user)
Offer.create!(title:"Collection de boites d'allumettes", description: "C'est le feu", user: user2)
Offer.create!(title:"Jardin à l'anglaise", description: "bla", user: user2)
Offer.create!(title:"Maison de maitre", description: "bla", user: user2)
