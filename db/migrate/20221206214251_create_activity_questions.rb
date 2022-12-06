class CreateActivityQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :activity_questions do |t|
      t.string :question_text
      t.string :response_text
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
