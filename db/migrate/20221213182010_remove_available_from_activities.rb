class RemoveAvailableFromActivities < ActiveRecord::Migration[7.0]
  def change
    remove_column :activities, :available, :boolean
  end
end
