class CreateQuotations < ActiveRecord::Migration
  def self.up
    create_table :quotations do |t|
      t.string :quo_title
      t.text :quo_detail
      t.integer :quo_terms
      t.text :quo_condition
      t.references :customer

      t.timestamps
    end
  end

  def self.down
    drop_table :quotations
  end
end
