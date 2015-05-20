class Player < ActiveRecord::Base
  belongs_to(:room)

  def attack(monster, item)
    monster_encountered = Monster.where(description: monster, room_id: self.room_id).first
    if item.in_backpack? == true
      new_monster_hp = monster.hp - item.attack_damage
      monster.update(hp: new_monster_hp)
      if monster.hp <= 0
        monster.update(killed_by_player: true)
      end
    end
  end

  def take(item)
    if item.room_id == self.room_id
      item.update(in_backpack?: true)
      item.update(room_id: nil)
    end
  end

  def use(item)
    if item.in_backpack? == true
      new_player_hp = self.hp + item.hp_modifier
      self.update(hp: new_player_hp)
    end
  end



  # Implement keys/doors later

  # def unlock
  # end


  def move(direction)
    current_room = Room.find(self.room_id)
    if direction == "north" && current_room.north == true
      current_room = Room.where(x_coordinate: current_room.x_coordinate, y_coordinate: (current_room.y_coordinate + 1)).first
      self.update(room_id: current_room.id)
    elsif direction == "south" && current_room.south == true
      current_room = Room.where(x_coordinate: current_room.x_coordinate, y_coordinate: (current_room.y_coordinate - 1)).first
      self.update(room_id: current_room.id)
    elsif direction == "east" && current_room.east == true
      current_room = Room.where(y_coordinate: current_room.y_coordinate, x_coordinate: (current_room.x_coordinate + 1)).first
      self.update(room_id: current_room.id)
    elsif direction == "west" && current_room.west == true
      current_room = Room.where(y_coordinate: current_room.y_coordinate, x_coordinate: (current_room.x_coordinate - 1)).first
      self.update(room_id: current_room.id)
    end
  end
end
