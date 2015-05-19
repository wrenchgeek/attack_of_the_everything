class Monster < ActiveRecord::Base
  belongs_to(:room)

<<<<<<< HEAD
#   scope(:alive, -> do
#     where({:killed_by_player => false}))
#   # scope(:aggro, -> do
#   #   where({:sees_player => true})
#   # end)
# # hmmmmm
#
#
#   private
#
#   def attack(player)
#     player.hp -= 1
#   end
# #
# end
=======
  scope(:alive, -> do
    where({:killed_by_player => false}))


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
>>>>>>> a850491e6b926f9a08e28b8f4984840383c3a5ec

end
