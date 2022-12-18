class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :login
      t.string :email
      t.string :password
      t.string :phone
      t.belongs_to :order, null: false, foreign_key: true
      t.timestamps
    end
  end
end
