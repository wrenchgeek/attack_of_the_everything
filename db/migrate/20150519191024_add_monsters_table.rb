class AddMonstersTable < ActiveRecord::Migration
  def change

    create_table(:monsters) do |t|
      t.column(:description, :string)
    end


  end
end
