class CreateTrees < ActiveRecord::Migration[8.0]
  def change
    create_table :trees do |t|
      t.string :name
      t.string :instagram
      t.string :x
      t.string :youtube
      t.integer :user_id
      t.string :style

      t.timestamps
    end
  end
end
