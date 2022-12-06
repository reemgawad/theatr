class CreateTeacherComments < ActiveRecord::Migration[7.0]
  def change
    create_table :teacher_comments do |t|
      t.string :text
      t.references :activity, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: { to_table: :users }
      t.references :teacher, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
