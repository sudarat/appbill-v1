class CreateBilldescrips < ActiveRecord::Migration
  def self.up
    create_table :billdescrips do |t|
      t.string :billd_descrip
      t.integer :billd_quantity
      t.integer :billd_unitprice
      t.references :bill

      t.timestamps
    end
  end

  def self.down
    drop_table :billdescrips
  end
end
