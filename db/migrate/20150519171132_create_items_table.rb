class CreateItemsTable < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.boolean :usable?
      t.boolean :weapon?
      t.boolean :in_backpack?
      t.integer :room_id
      t.timestamps null:false
    end
    create_table :keys do |t|
      t.integer :room_id
      t.integer :door_id
      t.boolean :used
      t.timestamps null:false
    end
  end
end
