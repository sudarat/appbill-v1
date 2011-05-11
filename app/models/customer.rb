class Customer < ActiveRecord::Base
  
  has_many :quotations
  has_many :invoices
  has_many :bills
  
  validates_presence_of :name,:address
  
  #validate do |customer|
  #  customer.errors.add_to_base("Customer name can't be blank") if customer.cust_name.blank?
  #  customer.errors.add_to_base("Customer address can't be blank") if customer.cust_address.blank?
  #end
  
end
