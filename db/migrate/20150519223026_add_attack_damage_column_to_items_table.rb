class AddAttackDamageColumnToItemsTable < ActiveRecord::Migration
  def change
    add_column(:items, :attack_damage, :integer)
  end
end
