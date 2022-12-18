class CreateOrdProds < ActiveRecord::Migration[7.0]
  def change
    create_table :ord_prods do |t|
      t.belongs_to :order, null: false, foreign_key: true
      t.belongs_to :product, null: false, foreign_key: true
      t.timestamps
    end
  end
end
