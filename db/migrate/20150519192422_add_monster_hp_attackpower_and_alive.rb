class AddMonsterHpAttackpowerAndAlive < ActiveRecord::Migration
  def change


      add_column(:monsters, :hp, :integer)
      add_column(:monsters, :ap, :integer)
      add_column(:monsters, :killed_by_player, :boolean)


  end
end
