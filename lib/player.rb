class Player < ActiveRecord::Base
  belongs_to(:room)

  private

  def attack(monster, item)
    current_room = Room.find(self.room_id)
    monster_encountered = Monster.find(current_room.monster_id)
    @item = item.id
    @monster = monster.id
  end

  private

  def take(item)
    if item.room_id == player.room_id
      inventory.push(item)
      item.room_id = nil
    end
  end

  def use(item)
    if item.in_backpack? (true)
    end
  end

  def unlock
  end

  # movement
  def move(direction)
    current_room = Room.find(player.room_id)
    if direction == "north"
      if current_room.north == true
        current_room.y_coordinate += 1
        current_room.id = player.room_id
      end
    elsif direction == "south"
      if current_room.south == true
        current_room.y_coordinate -= 1
        current_room.id = player.room_id
      end
    elsif direction == "east"
      if current_room.east == true
        current_room.x_coordinate += 1
        current_room.id = player.room_id
      end
    elsif direction == "west"
      if current_room.west == true
        current_room.x_coordinate -= 1
        current_room.id = player.room_id
      end
    end
  end
end
