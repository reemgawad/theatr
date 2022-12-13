class AddLevelToActivity < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :level, :string
  end
end
