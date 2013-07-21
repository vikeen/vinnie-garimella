class AddAttachmentArtworkToArtworks < ActiveRecord::Migration
  def self.up
    change_table :artworks do |t|
      t.attachment :artwork
    end
  end

  def self.down
    drop_attached_file :artworks, :artwork
  end
end
