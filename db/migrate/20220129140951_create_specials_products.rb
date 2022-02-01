class CreateSpecialsProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products_specials do |t|
      t.integer :special_id
      t.integer :product_id
    end
  end
end
