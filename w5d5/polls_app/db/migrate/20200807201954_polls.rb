class Polls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.string :title, NULL: false
      t.integer :author_id, NULL: false
    end

    add_index :polls, :title, unique: true
  end
end
