class FixAttachmentNamesToArtworks < ActiveRecord::Migration
  def change
    rename_column :artworks, :artwork_file_name, :attachment_file_name
    rename_column :artworks, :artwork_content_type, :attachment_content_type
    rename_column :artworks, :artwork_file_size, :attachment_file_zile
    rename_column :artworks, :artwork_updated_at, :attachment_update
  end
end
