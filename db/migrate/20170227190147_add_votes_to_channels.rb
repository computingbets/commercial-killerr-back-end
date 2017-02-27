class AddVotesToChannels < ActiveRecord::Migration
  def change
    add_column :channels, :votes, :integer
  end
end
