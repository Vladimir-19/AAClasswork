class CreateShortenedUrl < ActiveRecord::Migration[5.2]
  def change
    create_table :shortened_urls do |t|
      t.string :long_urs, null: false 
      t.string :short_url, null: false 
      t.integer :sunmitted_id, null: false 
      t.timestamps
    end

    add_index :shortened_urls, :short_url, unique: true
    add_index :shortened_urls, :sunmitted_id
    
  end
end