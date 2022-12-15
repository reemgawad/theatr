class AddAvailableFieldToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :available, :boolean
  end
end
