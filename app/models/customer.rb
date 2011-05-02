class Customer < ActiveRecord::Base
  
  has_many :quotations
  has_many :invoices
end
