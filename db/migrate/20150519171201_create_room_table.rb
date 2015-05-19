class CreateRoomTable < ActiveRecord::Migration
  def change
    create_table(:rooms) do |t|
      t.integer :x_coordinate
      t.integer :y_coordinate
      t.boolean :north
      t.boolean :south
      t.boolean :east
      t.boolean :west
    end
  end
end
