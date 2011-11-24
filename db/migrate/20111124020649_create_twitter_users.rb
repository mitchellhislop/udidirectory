class CreateTwitterUsers < ActiveRecord::Migration
  def change
    create_table :twitter_users do |t|
      t.integer :twitter_id
      t.string :screen_name
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
