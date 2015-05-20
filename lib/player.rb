class Player < ActiveRecord::Base
  belongs_to(:room)

  def attack(monster, item)
    room_id = self.room_id
    monster = Monster.where(room_id: room_id).first
    damage_given = item.attack_damage
    monster.update(hp: (monster.hp -= damage_given))
  end

  def take(item)
    if item.room_id == self.room_id
      item.update(in_backpack?: true)
      item.update(room_id: nil)
    end
  end

  def use(item)
    if item.in_backpack? (true)
      if item.usable? (true)
      end
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
