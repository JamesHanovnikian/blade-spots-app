class CreateSpots < ActiveRecord::Migration[6.1]
  def change
    create_table :spots do |t|
      t.string :name
      t.string :address
      t.string :bust
      t.string :description
      t.string :category
      t.integer :user_id

      t.timestamps
    end
  end
end
