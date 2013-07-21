class FixArtworkTtypeIdName < ActiveRecord::Migration
  def change
    rename_column :artworks, :artwork_type_id, :type_id
  end
end
