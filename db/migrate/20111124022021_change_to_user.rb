class ChangeToUser < ActiveRecord::Migration
  def change
    rename_column :udids, :user_id, :twitter_user_id 
  end
end
