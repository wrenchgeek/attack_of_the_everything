class CreateJoinTables < ActiveRecord::Migration
  def change
    create_table :items_rooms do |t|
      t.integer :item_id
      t.integer :room_id
    end
    create_table :keys_rooms do |t|
      t.integer :key_id
      t.integer :room_id
    end
    create_table :doors_keys do |t|
      t.integer :key_id
      t.integer :door_id
    end
    create_table :monsters_rooms do |t|
      t.integer :monster_id
      t.integer :room_id
    end
    create_table :doors_rooms do |t|
      t.integer :door_id
      t.integer :room_id
    end
  end
end
