class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.text :name
      t.text :email
      t.text :address
      t.text :payment_method
      t.integer :user_id

      t.timestamps
    end
  end
end
