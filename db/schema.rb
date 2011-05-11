# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110504181644) do

  create_table "billdescrips", :force => true do |t|
    t.string   "billd_descrip"
    t.integer  "billd_quantity"
    t.integer  "billd_unitprice"
    t.integer  "bill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bills", :force => true do |t|
    t.string   "bill_title"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "cust_name"
    t.text     "cust_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoicedescrips", :force => true do |t|
    t.string   "ind_descrip"
    t.integer  "ind_quantity"
    t.integer  "ind_unitprice"
    t.integer  "invoice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", :force => true do |t|
    t.string   "inv_title"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quotadescrips", :force => true do |t|
    t.string   "qd_descrip"
    t.integer  "qd_quantity"
    t.integer  "qd_unitprice"
    t.integer  "quotation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quotations", :force => true do |t|
    t.string   "quo_title"
    t.text     "quo_detail"
    t.integer  "quo_terms"
    t.text     "quo_condition"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
