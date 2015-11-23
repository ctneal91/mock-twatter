class AddUserIdToCheets < ActiveRecord::Migration
  def change
    add_column :cheets, :user_id, :integer
  end
end
