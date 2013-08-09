# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
user = User.create(name: 'TestEli', email: 'eli@aplace.com', password 'kachaa')
task = Task.create(task_name: 'Make Pickled Pig Feet', details: 'Chop off a pig\'s foot, toss it in some brine, take a load off', blockers: 'Where\'d the pigs go?', created_at: date.today)
