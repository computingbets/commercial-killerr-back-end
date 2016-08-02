class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.integer :name
      t.boolean :ads

      t.timestamps null: false
    end
  end
end
