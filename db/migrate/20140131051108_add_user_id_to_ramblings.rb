class AddUserIdToRamblings < ActiveRecord::Migration
  def change
    add_column :ramblings, :user_id, :integer
    add_index :ramblings, :user_id
  end
end
