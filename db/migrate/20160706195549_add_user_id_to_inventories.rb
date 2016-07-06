class AddUserIdToInventories < ActiveRecord::Migration[5.0]
  def change
    add_column :inventories, :user_id, :integer
    add_index :inventories, :user_id
  end
end
