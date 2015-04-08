class CreateQuizAnswers < ActiveRecord::Migration
  def change
    create_table :quiz_answers do |t|
      t.string :content
      t.references :quiz_question, index: true
      t.boolean :correct, default: false

      t.timestamps null: false
    end
    add_foreign_key :quiz_answers, :quiz_questions
  end
end
