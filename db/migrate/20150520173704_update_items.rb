class UpdateItems < ActiveRecord::Migration
  def change

    remove_column(:items, :weapon?)
    add_column(:items, :hp_modifier, :integer)

  end
end
