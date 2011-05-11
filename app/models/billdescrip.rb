class Billdescrip < ActiveRecord::Base
  belongs_to :bill
  
  #validates_presence_of :description,:quantity,:unit_price
  
  validate do |quotation|
    quotation.errors.add_to_base("Description wrong") if quotation.description == "Description"
    quotation.errors.add_to_base("Description can't be blank") if quotation.description.blank?
    quotation.errors.add_to_base("Quantity not '0'") if quotation.quantity == 0
    quotation.errors.add_to_base("Quantity can't be blank") if quotation.quantity.blank?
    quotation.errors.add_to_base("Unit Price not '0'") if quotation.unit_price == 0
    quotation.errors.add_to_base("Unit Price can't be blank") if quotation.unit_price.blank?
  end
end
