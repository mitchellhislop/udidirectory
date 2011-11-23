class CreateUdids < ActiveRecord::Migration
  def change
    create_table :udids do |t|
      t.integer :user_id
      t.string :name
      t.string :udid

      t.timestamps
    end
  end
end
