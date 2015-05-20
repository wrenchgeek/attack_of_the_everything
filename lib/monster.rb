class Monster < ActiveRecord::Base
  belongs_to(:room)
  has_many(:item)

  scope(:alive, -> do
    where({:killed_by_player => false})
  end)

  def attack(player)
    if self.room_id == player.room_id
      if self.killed_by_player() == false
        player_hp = player.hp()
        player_hp -= self.ap()
        player.update({:hp => player_hp})
        puts 'Player screams, "AAawwgghghghh!!11!1!"'
      end
    end
  end

  def dies
    self.update({:killed_by_player => true, :description => self.description.concat(" corpse")})
    dropped_item = Item.find(1.+(rand(4)))
    dropped_item.update(:room_id => self.room_id())
  end


end
