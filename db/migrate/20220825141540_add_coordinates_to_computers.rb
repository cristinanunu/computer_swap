class AddCoordinatesToComputers < ActiveRecord::Migration[7.0]
  def change
    add_column :computers, :latitude, :float
    add_column :computers, :longitude, :float
  end
end
