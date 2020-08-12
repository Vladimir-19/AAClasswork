class CreateVisitsModels < ActiveRecord::Migration[5.2]
  def change
    create_table :visits_models do |t|
      t.integer :user_id, null: false
      t.integer :shortner_url_id, null: false
      t.timestamps
    end

    add_index :visits, :user_id
    add_index :visits, :shortner_url_id
  end
end
