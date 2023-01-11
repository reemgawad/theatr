class AddVideoToActivity < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :video, :string
  end
end
