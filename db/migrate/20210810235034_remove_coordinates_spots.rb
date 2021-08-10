class RemoveCoordinatesSpots < ActiveRecord::Migration[6.1]
  def change
    remove_column :spots, :coordinates
  end
end
