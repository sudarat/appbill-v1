class Invoice < ActiveRecord::Base
  belongs_to :customer
  has_many :invoicedescrips
  
  def details_html
    html = ""
    
    invoicedescrips.each do |detail|
	html += "<tr><td>#{detail.ind_descrip}</td> <td>#{detail.ind_quantity}</td> <td>#{detail.ind_unitprice}</td> <td>#{detail.ind_unitprice*detail.ind_quantity}</td></tr>"
    end
    
    return html
  end
  
   def subtotal_html
    subtotal = 0
    
    invoicedescrips.each do |detail|
	subtotal += detail.ind_unitprice*detail.ind_quantity
    end
    
    return subtotal
  end
  
  def tax_html
    tax = 0
    
     invoicedescrips.each do |detail|
	tax += detail.ind_unitprice*detail.ind_quantity
    end
    
    tax = (tax * 7)/100
    
    return tax
  end
  
  def total_html
    total = 0
    
     invoicedescrips.each do |detail|
	total += detail.ind_unitprice*detail.ind_quantity
    end
    
    total = total + ((total * 7)/100)
    
    return total
  end
  
end
