class ChangeArtorkTypeIdBackToArtworks < ActiveRecord::Migration
  def change
    rename_column :artworks, :artwork_type_id, :artwork_type
  end
end
