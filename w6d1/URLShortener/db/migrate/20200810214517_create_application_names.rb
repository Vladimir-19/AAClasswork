class CreateApplicationNames < ActiveRecord::Migration[5.2]
  def change
    create_table :application_names do |t|

      t.timestamps
    end
  end
end
