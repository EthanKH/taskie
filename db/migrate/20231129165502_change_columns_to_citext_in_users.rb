class ChangeColumnsToCitextInUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :email, :citext
    change_column :users, :username, :citext
  end
end
