# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Services
Service.delete_all
Service.create(from: 'Av. from', to: 'Av. To', day: '2015-10-10', driver: 'Manuel Hurtado', user:  User.find_by(id: 2))
Service.create(from: 'Av. from2', to: 'Av. To2', day: '2015-10-10', driver: 'Manuel Hurtado', user:  User.find_by(id: 2))
Service.create(from: 'Av. from', to: 'Av. To3', day: '2015-10-10', driver: 'Hernandez Perez', user:  User.find_by(id: 4))
Service.create(from: 'Av. from2', to: 'Av. To4', day: '2015-10-10', driver: 'Hernandez Perez', user:  User.find_by(id: 4))