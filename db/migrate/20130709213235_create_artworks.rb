class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :name
      t.string :filename
      t.string :description
      t.integer :artwork_type_id

      t.timestamps
    end
  end
end
