class AddNewActivityFields < ActiveRecord::Migration[7.0]
  def change
    remove_column :activities, :activity_type
    add_reference :activities, :activity_type, null: false, foreign_key: true
    add_reference :activities, :phase, null: false, foreign_key: true
  end
end
