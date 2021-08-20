class RemoveUsernameFromTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :tricks, :username, :string
  end
end
