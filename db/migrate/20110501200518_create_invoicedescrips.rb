class CreateInvoicedescrips < ActiveRecord::Migration
  def self.up
    create_table :invoicedescrips do |t|
      t.string :ind_descrip
      t.integer :ind_quantity
      t.integer :ind_unitprice
      t.references :invoice

      t.timestamps
    end
  end

  def self.down
    drop_table :invoicedescrips
  end
end
