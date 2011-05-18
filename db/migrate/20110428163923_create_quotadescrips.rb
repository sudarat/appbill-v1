class CreateQuotadescrips < ActiveRecord::Migration
  def self.up
    create_table :quotadescrips do |t|
      t.string :description
      t.integer :quantity
      t.integer :unit_price
      t.references :quotation

      t.timestamps
    end
  end

  def self.down
    drop_table :quotadescrips
  end
end
