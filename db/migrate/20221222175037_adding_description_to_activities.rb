class AddingDescriptionToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :description, :text
    change_column :activity_questions, :question_text, :text
    change_column :teacher_comments, :text, :text
    change_column :user_responses, :text, :text
  end
end
