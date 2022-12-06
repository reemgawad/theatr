class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.integer :type
      t.integer :question_amount

      t.timestamps
    end
  end
end
