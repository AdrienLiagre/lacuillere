# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "La brocantine",
    address:      "112 rue du Fg St-Honoré 59000 Cesoin",
    category:     "french",
  },
  {
    name:         "l'ilot bar",
    address:      "4 rue Blainville 59000 Lille",
    category:     "french",
  },
  {
    name:         "Le broc",
    address:      "route de Suresnes 59000 Lille",
    category:     "french",
  },
  {
    name:         "Le barbier qui fume",
    address:      "rue royale 59000 Lille",
    category:     "french",
  },
  {
    name:         "le mother",
    address:      "parc jean-baptiste lebas 59000 Lille",
    category:     "french",
  },
]
restaurants_attributes.each { |params| Restaurant.create!(params) }
