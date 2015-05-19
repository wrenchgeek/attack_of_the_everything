class DropInventoryTable < ActiveRecord::Migration
  def change
    drop_table(:inventory)
  end
end
