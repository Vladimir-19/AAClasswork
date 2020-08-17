class CreateArtwork < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title, null: false
      t.string :image_url, null: false
      t.integer :artist_id, null: false
    end
    add_index :artworks, [:title, :artist_id], unique: true
  end
end 

'''
title: dog, artist_id: 1
title: dog, artist_id: 2
title: cat, artist_id: 2 

'''