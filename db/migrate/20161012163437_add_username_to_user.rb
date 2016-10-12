class AddUsernameToUser < ActiveRecord::Migration
  def change
    add_column :users, :daniel, :string
  end
end
