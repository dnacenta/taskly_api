# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
  {name: 'Yoda', email: 'yoda@lightside.com'},
  {name: 'Darth Vader', email: 'vader@darkside.com'}
])

Task.create([
  {name: 'Train padawans',  due_date: DateTime.now, user_id: User.ids[0]},
  {name: 'Meditate about the ways of the force',  due_date: DateTime.now, user_id: User.ids[0]},
  {name: 'Dark side learning',  due_date: DateTime.now, user_id: User.ids[1]}
])

Order.create([
  {name: 'Join the Dark Side...',  due_date: DateTime.now, user_id: User.ids[0]},
  {name: 'Get a red lightsaber',  due_date: DateTime.now, user_id: User.ids[0]},
  {name: 'Time for redemption',  due_date: DateTime.now, user_id: User.ids[1]}
])
