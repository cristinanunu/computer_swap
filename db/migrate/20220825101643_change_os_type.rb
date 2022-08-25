class ChangeOsType < ActiveRecord::Migration[7.0]
  def change
    change_column :computers, :os, :string
  end
end
