class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email_id, null: false
      t.timestamps  
    end

    add_index :users, :email_id
  end
end
