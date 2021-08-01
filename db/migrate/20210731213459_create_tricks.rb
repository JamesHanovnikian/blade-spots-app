class CreateTricks < ActiveRecord::Migration[6.1]
  def change
    create_table :tricks do |t|
      t.string :spot_id
      t.string :integer
      t.integer :user_id
      t.string :content
      t.string :string

      t.timestamps
    end
  end
end
