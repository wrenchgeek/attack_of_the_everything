class AddRoomIdToMonsters < ActiveRecord::Migration
  def change
    add_column(:monsters, :room_id, :integer)
  end
end
