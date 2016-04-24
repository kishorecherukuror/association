class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :product
      t.integer :qunatity
      t.integer :price

      t.timestamps null: false
    end
  end
end
