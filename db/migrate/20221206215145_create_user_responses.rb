class CreateUserResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :user_responses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :activity_question, null: false, foreign_key: true
      t.string :text
      t.string :picture
      t.boolean :correct

      t.timestamps
    end
  end
end
