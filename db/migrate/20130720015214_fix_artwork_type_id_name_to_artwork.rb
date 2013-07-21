class FixArtworkTypeIdNameToArtwork < ActiveRecord::Migration
  def change
    rename_column :artworks, :type_id, :artwork_type_id
  end
end
