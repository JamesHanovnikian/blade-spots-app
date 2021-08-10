class AddCoordinatesToSpots < ActiveRecord::Migration[6.1]
  def change
    add_column :spots, :coordinates, :string 
  end
end
