class CreateQuizQuestions < ActiveRecord::Migration
  def change
    create_table :quiz_questions do |t|
      t.string :content

      t.timestamps null: false
    end
  end
end
