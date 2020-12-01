# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Poll.delete_all
Question.delete_all
AnswerChoice.delete_all
Response.delete_all

user1 = User.create!({username: "first_user"})
user2 = User.create!({username: "second_user"})
user3 = User.create!({username: "third_user"})

polls = Poll.create!([
    {title: "first poll!", author_id: user1.id},
    {title: "second poll!", author_id: user1.id},
    {title: "third poll!", author_id: user2.id},
    {title: "fourth poll!", author_id: user3.id}
])

questions = Question.create!([
    {text: "What is your favorite pet?", poll_id: polls[0].id},
    {text: "How old are you?", poll_id: polls[1].id},
    {text: "Which country are you from?", poll_id: polls[2].id},
    {text: "Which bear is best?", poll_id: polls[3].id}
])

answer_choices = AnswerChoice.create([
    {text: "Cat", questions[0].id},
    {text: "Dog", questions[0].id},
    {text: "under 60", questions[1].id},
    {text: "60 and over", questions[1].id},
    {text: "Russia", questions[2].id},
    {text: "Ukraine", questions[2].id},
    {text: "Black bear", questions[3].id},
    {text: "Grizzlie bear", questions[3].id}
])

responses = Response.create([
    {user_id: user1.id, answer_choice_id: answer_choices[0]},
    {user_id: user1.id, answer_choice_id: answer_choices[2]},
    {user_id: user1.id, answer_choice_id: answer_choices[5]},
    {user_id: user2.id, answer_choice_id: answer_choices[1]},
    {user_id: user2.id, answer_choice_id: answer_choices[3]},
    {user_id: user3.id, answer_choice_id: answer_choices[7]}
])