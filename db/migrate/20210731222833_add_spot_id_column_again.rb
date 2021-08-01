class AddSpotIdColumnAgain < ActiveRecord::Migration[6.1]
  def change
    add_column :tricks, :spot_id, :integer
  end
end
