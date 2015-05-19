class Player < ActiveRecord::Base
	belongs_to(:room)


  private

  # attr_reader(:hp)
  # def initialize(:attributes)
  #   @hp = 100
  # end

  def attack(monster)
  end

  def take(item)
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
		else
    end
  end
end
