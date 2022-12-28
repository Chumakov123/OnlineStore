class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :description
      t.float :price, null: false
      t.float :rating
      t.integer :votes
      t.belongs_to :user, foreign_key: true
      t.belongs_to :image,  foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true
      t.timestamps
    end
  end
end
