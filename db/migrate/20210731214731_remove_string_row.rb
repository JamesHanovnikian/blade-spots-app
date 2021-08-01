class RemoveStringRow < ActiveRecord::Migration[6.1]
  def change
    remove_column :tricks, :string
  end
end
