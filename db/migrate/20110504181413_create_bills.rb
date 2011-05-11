class CreateBills < ActiveRecord::Migration
  def self.up
    create_table :bills do |t|
      t.string :bill_title
      t.references :customer

      t.timestamps
    end
  end

  def self.down
    drop_table :bills
  end
end
