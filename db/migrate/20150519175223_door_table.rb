class DoorTable < ActiveRecord::Migration
  def change
    create_table(:doors) do |t|
      t.boolean :unlocked
    end
  end
end
