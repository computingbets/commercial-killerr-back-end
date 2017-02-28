class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :ads
      t.belongs_to :user, foreign_key: true
      t.belongs_to :channel, foreign_key: true

      t.timestamps null: false
    end
  end
end
