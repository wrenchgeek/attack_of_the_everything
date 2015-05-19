class DropRedundantTables < ActiveRecord::Migration
  def change
    drop_table(:items_rooms)
    drop_table(:keys_rooms)
    drop_table(:monsters_rooms)
    drop_table(:doors_keys)
    drop_table(:doors_rooms)
    create_table(:inventory) do |t|
      t.integer :item_id
    end
  end
end
