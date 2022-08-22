class CreateComputers < ActiveRecord::Migration[7.0]
  def change
    create_table :computers do |t|
      t.string :brand
      t.string :category
      t.float :screen_size
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
