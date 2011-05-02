class CreateInvoices < ActiveRecord::Migration
  def self.up
    create_table :invoices do |t|
      t.string :inv_title
      t.references :customer

      t.timestamps
    end
  end

  def self.down
    drop_table :invoices
  end
end
