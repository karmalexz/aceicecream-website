class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.string :name
      t.float :price
      t.integer :stock

      t.timestamps
    end
  end
end
