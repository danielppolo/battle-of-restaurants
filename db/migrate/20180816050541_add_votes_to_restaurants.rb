class AddVotesToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :votes, :integer, null: false, default: 0
  end
end
