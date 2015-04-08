class QuizQuestion < ActiveRecord::Base
  has_many :quiz_answers

  def correct_answer
    quiz_answers.where(correct: true).first.content
  end
end
