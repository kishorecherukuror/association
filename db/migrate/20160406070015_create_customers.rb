class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :age
      t.text :address
      t.string :phnum

      t.timestamps null: false
    end
  end
end
