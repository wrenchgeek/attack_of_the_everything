class Monster < ActiveRecord::Base
  belongs_to(:room)

  scope(:alive, -> do
    where({:killed_by_player => false}))
  end
  private

  attr_reader(:hp, :ap)

  def initialize(attributes)
    @hp = attributes[:hp]
    @ap = attributes[:ap]
    @killed_by_player = attributes[:killed_by_player]
  end

  def attack(player)
    player.hp -= @ap
  end


end
