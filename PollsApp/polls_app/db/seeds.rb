# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all

User.create(username: "Helloworld")
5.times { User.create(username: Faker::Name.name) }

Poll.create(title: Faker::Lorem.sentence(4), author_id: 1)
Poll.create(title: Faker::Lorem.sentence(5), author_id: 3)
Poll.create(title: Faker::Lorem.sentence(5), author_id: 4)

Question.create(text: Faker::Lorem.question(5), poll_id: 1)
Question.create(text: Faker::Lorem.question(5), poll_id: 1)
Question.create(text: Faker::Lorem.question(5), poll_id: 1)
Question.create(text: Faker::Lorem.question(5), poll_id: 2)
Question.create(text: Faker::Lorem.question(5), poll_id: 2)
Question.create(text: Faker::Lorem.question(5), poll_id: 2)

AnswerChoice.create(text: Faker::Football.player, question_id: 1)
AnswerChoice.create(text: Faker::Football.player, question_id: 1)
AnswerChoice.create(text: Faker::Football.player, question_id: 1)
AnswerChoice.create(text: Faker::Football.player, question_id: 1)
AnswerChoice.create(text: Faker::Color.color_name, question_id: 2)
AnswerChoice.create(text: Faker::Color.color_name, question_id: 2)
AnswerChoice.create(text: Faker::Color.color_name, question_id: 2)
AnswerChoice.create(text: Faker::Color.color_name, question_id: 2)

Response.create(user_id: 2, answer_choice_id: 1)
Response.create(user_id: 5, answer_choice_id: 2)
Response.create(user_id: 3, answer_choice_id: 2)
Response.create(user_id: 4, answer_choice_id: 3)

Response.create(user_id: 1, answer_choice_id: 5)
Response.create(user_id: 2, answer_choice_id: 6)
Response.create(user_id: 4, answer_choice_id: 8)
Response.create(user_id: 5, answer_choice_id: 8)




