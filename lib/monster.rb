class Monster < ActiveRecord::Base
  belongs_to(:room)
<<<<<<< HEAD
  #
  # scope(:alive, -> do
  #   where({:killed_by_player => false}))
=======

  scope(:alive, -> do
    where({:killed_by_player => false})
  end)
>>>>>>> 6141f210d50581805ebbbf32fa70077c957f2769

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
