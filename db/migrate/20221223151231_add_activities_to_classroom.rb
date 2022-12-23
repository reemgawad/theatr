class AddActivitiesToClassroom < ActiveRecord::Migration[7.0]
  def change
    add_column :classrooms, :activities, :string, array: true, default: []
    add_column :badges, :active, :boolean, default: false
  end
end
