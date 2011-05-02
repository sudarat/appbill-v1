class Quotation < ActiveRecord::Base
  belongs_to :customer
  has_many :quotadescrips
end
