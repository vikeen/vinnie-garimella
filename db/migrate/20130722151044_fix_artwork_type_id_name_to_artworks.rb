class FixArtworkTypeIdNameToArtworks < ActiveRecord::Migration
  def change
    rename_column :artworks, :artwork_type, :artwork_type_id
  end
end
