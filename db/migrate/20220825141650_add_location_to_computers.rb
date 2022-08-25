class AddLocationToComputers < ActiveRecord::Migration[7.0]
  def change
    add_column :computers, :location, :string
  end
end
