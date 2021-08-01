class ChangeTypeOfSpotId < ActiveRecord::Migration[6.1]
  def change
    remove_column :tricks, :spot_id
  end
end
