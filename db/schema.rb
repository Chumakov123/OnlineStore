# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_22_072316) do
  create_table "admin_users", force: :cascade do |t|
    t.string "login"
    t.string "email"
    t.string "password"
    t.string "phone"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "order_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_admin_users_on_order_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "url"
    t.integer "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_images_on_product_id"
  end

  create_table "ord_prods", force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_ord_prods_on_order_id"
    t.index ["product_id"], name: "index_ord_prods_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.text "date"
    t.float "price"
    t.integer "user_id", null: false
    t.integer "ord_prod_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ord_prod_id"], name: "index_orders_on_ord_prod_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.float "price"
    t.float "rating"
    t.integer "votes"
    t.integer "user_id"
    t.integer "image_id"
    t.integer "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["image_id"], name: "index_products_on_image_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "email"
    t.string "password_digest"
    t.string "phone"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_users_on_order_id"
  end

  add_foreign_key "admin_users", "orders"
  add_foreign_key "images", "products"
  add_foreign_key "ord_prods", "orders"
  add_foreign_key "ord_prods", "products"
  add_foreign_key "orders", "ord_prods"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "images"
  add_foreign_key "products", "users"
  add_foreign_key "users", "orders"
end
