class AddFieldsToComputers < ActiveRecord::Migration[7.0]
  def change
    add_column :computers, :model, :string
    add_column :computers, :year, :integer
    add_column :computers, :processor, :string
    add_column :computers, :ram, :string
    add_column :computers, :storage, :string
    add_column :computers, :os, :integer
    add_column :computers, :description, :text
  end
end
