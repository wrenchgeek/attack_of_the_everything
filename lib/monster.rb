class Monster < ActiveRecord::Base
  belongs_to(:room)

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

end
