class AddDateToClassroom < ActiveRecord::Migration[7.0]
  def change
    add_column :classrooms, :date, :datetime
  end
end
