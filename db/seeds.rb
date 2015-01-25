# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seed data here"

letter_type = LetterType.create({ name: 'Cover Letter', category: 1 })
letter_field1 = LetterField.create({name: 'What is one skill?', letter_type_id: letter_type.id, field_type: 'question_field', short_name: 'skill1'})
letter_field2 = LetterField.create({name: 'What is your background?', letter_type_id: letter_type.id, field_type: 'check_box', short_name: 'background'})

# Mayor.create(name: 'Emanuel', city: cities.first)

emma = Admin.create({email: "emma.n.spencer@gmail.com"})