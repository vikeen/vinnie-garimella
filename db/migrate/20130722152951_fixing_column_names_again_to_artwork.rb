class FixingColumnNamesAgainToArtwork < ActiveRecord::Migration
  def change
    rename_column :artworks, :artwork_type_id, :artwork_types_id
  end
end
