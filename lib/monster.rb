class Monster < ActiveRecord::Base
  belongs_to(:room)
  has_many(:item)


  scope(:alive, -> do
    where({:killed_by_player => false})
  end)

  def attack(player)
    if self.room_id == player.room_id
      player_hp = player.hp()
      player_hp -= self.ap()
      player.update({:hp => player_hp})
      puts 'Player screams, "AAawwgghghghh!!11!1!"'
    end
  end


  # took out private

  def dies
    self.update({:killed_by_player => true})
    dropped_item = Item.find(rand(1+4).to_i())
    dropped_item.update(:room_id => self.room_id())
    puts 'Monster dies a horrific death... however...'
  end


end
