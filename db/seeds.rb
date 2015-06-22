# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.delete_all
Classification.delete_all
Charity.delete_all

Category.create([{title: '1'}, {title: '2'}, {title: '3'}, {title: '4'}, {title: '5'}, {title: '6'}, {title: '7'}, {title: '8'}, {title: '9'}, {title: '10'}])
Charity.create([{name: '1'}, {name: '2'}, {name: '3'}, {name: '4'}, {name: '5'}, {name: '6'}, {name: '7'}, {name: '8'}, {name: '9'}, {name: '10'}])