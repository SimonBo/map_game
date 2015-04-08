# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
question = QuizQuestion.create(content: 'Jak sie nazywa nasz portal?')
QuizAnswer.create(content: 'Al-Jamari', quiz_question: question)
QuizAnswer.create(content: 'PolecamPacjenta', quiz_question: question)
QuizAnswer.create(content: 'ZwrotKosztow', quiz_question: question)
QuizAnswer.create(content: 'SzkolnaKasa', quiz_question: question, correct: true)