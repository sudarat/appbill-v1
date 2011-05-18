class CreateBilldescrips < ActiveRecord::Migration
  def self.up
    create_table :billdescrips do |t|
      t.string :description
      t.integer :quantity
      t.integer :unit_price
      t.references :bill

      t.timestamps
    end
  end

  def self.down
    drop_table :billdescrips
  end
end
