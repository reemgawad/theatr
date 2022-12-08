class RemoveTypeFromActivity < ActiveRecord::Migration[7.0]
  def change
    remove_column :activities, :type
    add_column :activities, :activity_type, :string
  end
end
