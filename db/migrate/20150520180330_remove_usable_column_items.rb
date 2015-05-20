class RemoveUsableColumnItems < ActiveRecord::Migration
  def change
    remove_column(:items, :usable?)
  end
end
