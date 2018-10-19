# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jerry = Pet.create(name:'Jerry', species:'plant', age:1)
cody = Pet.create(name:'Cody', species:'cat', age:13)

melanie = Owner.create(name:'Melanie')
evan = Owner.create(name:'Evan')

melanie.pets << jerry
evan.pets<< cody
