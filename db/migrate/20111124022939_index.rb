class Index < ActiveRecord::Migration
  def up
    add_index :udids, :twitter_user_id
    add_index :twitter_users, :twitter_id
    add_index :twitter_users, :screen_name
    add_index :twitter_users, :name
    add_index :twitter_users, :description
  end

  def down
    remove_index :udids, :twitter_user_id
    remove_index :twitter_users, :twitter_id
    remove_index :twitter_users, :screen_name
    remove_index :twitter_users, :name
    remove_index :twitter_users, :description
  end
end
