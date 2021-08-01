class RemoveColumnsFromTricks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tricks, :integer
  end
end
