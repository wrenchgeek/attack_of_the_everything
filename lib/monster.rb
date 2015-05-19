class Monster < ActiveRecord::Base
  belongs_to :room


  scope(:alive, -> do
    where({:killed_by_player => false})
  end)

  private

  def attack(player)
    player.hp -= @ap
  end

end
