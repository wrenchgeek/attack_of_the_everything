class AddAttackCounterToMonsters < ActiveRecord::Migration
  def change
    add_column(:monsters, :attack_counter, :integer)
  end
end
