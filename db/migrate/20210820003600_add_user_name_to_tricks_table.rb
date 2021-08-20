class AddUserNameToTricksTable < ActiveRecord::Migration[6.1]
  def change
    add_column :tricks, :username, :string
  end
end
