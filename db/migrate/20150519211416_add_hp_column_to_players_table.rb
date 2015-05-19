class AddHpColumnToPlayersTable < ActiveRecord::Migration
  def change
    add_column(:players, :hp, :integer)
  end
end
