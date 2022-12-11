class RemoveStudentFromTeacherComment < ActiveRecord::Migration[7.0]
  def change
    remove_reference :teacher_comments, :student, null: false, foreign_key: { to_table: :users }
  end
end
