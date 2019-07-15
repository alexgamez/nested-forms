# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

country = Country.create(name: "ESPAÑA")
country.states.create(name: "MADRID")

country = Country.create(name: "ITALIA")
country.states.create(name: "ROMA")

country = Country.create(name: "JAPON")
country.states.create(name: "TOKIO")

country = Country.create(name: "COSTA RICA")
country.states.create(name: "MADRID")

country = Country.create(name: "ESPAÑA")
country.states.create(name: "SAN JOSE")
