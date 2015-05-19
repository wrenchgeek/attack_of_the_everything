class ChangeKeys < ActiveRecord::Migration
  def change
    add_column(:keys, :in_backpack?, :boolean)
    remove_column(:keys, :used, :boolean)
    add_column(:keys, :used?, :boolean)
  end
end
