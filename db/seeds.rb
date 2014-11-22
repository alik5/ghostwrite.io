# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

letter = Letter.create({category: 'business', letter_type: 'cover letter'})
letter2 = Letter.create({category: 'personal', letter_type: 'invitation' })
letter3 = Letter.create({category: 'custom', letter_type: 'custom' })

question = Question.create({})