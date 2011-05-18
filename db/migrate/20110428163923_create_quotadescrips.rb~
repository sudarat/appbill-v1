class CreateQuotadescrips < ActiveRecord::Migration
  def self.up
    create_table :quotadescrips do |t|
      t.string :qd_descrip
      t.integer :qd_quantity
      t.integer :qd_unitprice
      t.references :quotation

      t.timestamps
    end
  end

  def self.down
    drop_table :quotadescrips
  end
end
