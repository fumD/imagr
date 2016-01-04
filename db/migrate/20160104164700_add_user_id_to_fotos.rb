class AddUserIdToFotos < ActiveRecord::Migration
  def change
    add_column :fotos, :user_id, :integer
    add_index :fotos, :user_id
  end
end
