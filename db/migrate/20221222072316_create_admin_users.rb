class CreateAdminUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_users do |t|
      t.string :login
      t.string :email
      t.string :password
      t.string :phone
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.belongs_to :order, null: false, foreign_key: true
      t.timestamps
    end
  end
end
