# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    category:     "french",
    phone_number: "01 45 63 76 25"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    category:     "italian",
    phone_number: "01 23 56 34 09"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    category:     "belgian",
    phone_number: "01 28 76 54 32"
  },
  {
    name:         "Le Select",
    address:      "Boulevard Montparnasse",
    category:     "french",
    phone_number: "01 24 57 35 06"
  },
  {
    name:         "Blueberry",
    address:      "Vers Bd Saint Germain",
    category:     "japanese",
    phone_number: "01 24 57 35 06"
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }
