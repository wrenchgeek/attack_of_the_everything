class Monster < ActiveRecord::Base
  belongs_to(:room)
  has_many(:item)

  scope(:alive, -> do
    where({:killed_by_player => false})
  end)


  private

  attr_reader(:hp, :ap)

  def initialize(attributes)
    @hp = attributes[:hp]
    @ap = attributes[:ap]
    @killed_by_player = attributes[:killed_by_player]
  end

  def attack(player)
    player_hp = 0.+(player.hp)
    player_hp -= @ap
    player_hp
  end

  def drop_loot
    if self.alive? == false
      dropped_item = Item.find(rand 10)
  end

end
