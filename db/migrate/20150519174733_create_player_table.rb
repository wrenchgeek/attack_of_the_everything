class CreatePlayerTable < ActiveRecord::Migration

  def change
    create_table(:players) do |t|
      t.column(:name, :string)
      t.column(:room_id, :int)
    end
  end
end
