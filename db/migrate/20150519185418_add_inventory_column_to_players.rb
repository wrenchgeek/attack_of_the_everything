class AddInventoryColumnToPlayers < ActiveRecord::Migration
  def change
    add_column(:players, :inventory_id, :integer)
  end
end
