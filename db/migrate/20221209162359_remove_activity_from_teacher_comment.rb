class RemoveActivityFromTeacherComment < ActiveRecord::Migration[7.0]
  def change
    remove_reference :teacher_comments, :activity, null: false, foreign_key: true
  end
end
