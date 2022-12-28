class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.text :date
      t.float :price
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :ord_prod, foreign_key: true
      t.timestamps
    end
  end
end
