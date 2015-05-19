class DropNameColumn < ActiveRecord::Migration
  def change
    remove_column(:players, :name)
  end
end
