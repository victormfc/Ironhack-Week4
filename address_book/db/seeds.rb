# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Contact.create([
  {name: 'Alfon', address: 'calle Siena 3', phone_number: '91-38347346', email: 'alfon@ironhack.com'},
  {name: 'Lluis', address: 'calle menorca s/n', phone_number: '91-4564211', email: 'lluis@ironhack.com'},
  {name: 'Rubén', address: 'calle pez 12', phone_number: '91-22640336', email: 'rubén@ironhack.com'},
  {name: 'Raúl', address: 'calle Latina 6', phone_number: '91-57364352', email: 'raul@ironhack.com'}
  ])
