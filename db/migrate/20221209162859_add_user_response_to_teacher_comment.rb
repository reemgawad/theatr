class AddUserResponseToTeacherComment < ActiveRecord::Migration[7.0]
  def change
    add_reference :teacher_comments, :user_response, null: false, foreign_key: true
  end
end
