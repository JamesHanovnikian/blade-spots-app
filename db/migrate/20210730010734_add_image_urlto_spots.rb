class AddImageUrltoSpots < ActiveRecord::Migration[6.1]
  def change
    add_column :spots, :image_url, :string
  end
end
