class RemovingLevel < ActiveRecord::Migration[7.0]
  def change
    remove_column :activities, :level
    add_column :activity_questions, :choices, :string, array: true, default: []
  end
end
