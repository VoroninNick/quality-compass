class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :phone
      t.string :body

      t.timestamps
    end
  end
end
