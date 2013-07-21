class AddNameToArtworkTypes < ActiveRecord::Migration
  def change
    add_column :artwork_types, :name, :string
  end
end
