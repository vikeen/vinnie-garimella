class RemoveFilenameFromArtworks < ActiveRecord::Migration
  def up
    remove_column :artworks, :filename
  end

  def down
    add_column :artworks, :filename, :varchar
  end
end
