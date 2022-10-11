class AddColumnForDistance < ActiveRecord::Migration[6.1]
  def change
    add_column :spots, :distance, :float
  end
end
