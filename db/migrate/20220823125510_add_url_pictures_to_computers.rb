class AddUrlPicturesToComputers < ActiveRecord::Migration[7.0]
  def change
    add_column :computers, :url, :string
  end
end
