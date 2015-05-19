class RemoveInventoryColumnFromPlayersTable < ActiveRecord::Migration
  def change
    remove_column(:players, :inventory_id)
  end
end
