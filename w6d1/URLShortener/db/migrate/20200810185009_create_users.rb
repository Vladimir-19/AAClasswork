class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :users_id, null: false
      t.integer :shortner_url_id, null: false
      t.timestamps
    end

    add_index :visits, :users_id
    add_index :visits, :shortner_url_id
  end
end
