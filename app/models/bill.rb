class Bill < ActiveRecord::Base
  belongs_to :customer
  has_many :billdescrips ,:dependent => :destroy
  
  validates_presence_of :title
  
  def details_html
    html = ""
    
    billdescrips.each do |detail|
	html += "<tr valign= top >
		  <td class=bordertop borderright><font size = 2>#{detail.description}</font></td> 
		  <td class=borderdetail><font size = 2>#{detail.quantity}</font></td> 
		  <td align= right class=borderdetail><font size = 2>#{detail.unit_price}</font></td> 
		  <td align=right class=bordertop><font size=2>#{detail.unit_price*detail.quantity}</font></td>
		 </tr>"
    end
    
    return html
  end
  
   def subtotal_html
    subtotal = 0
    
    billdescrips.each do |detail|
	subtotal += detail.unit_price*detail.quantity
    end
    
    return subtotal
  end
  
  def tax_html
    tax = 0
    
    billdescrips.each do |detail|
	tax += detail.unit_price*detail.quantity
    end
    
    tax = (tax * 7)/100
    
    return tax
  end
  
  def total_html
    total = 0
    
    billdescrips.each do |detail|
	total += detail.unit_price*detail.quantity
    end
    
    total = total + ((total * 7)/100)
    
    return total
  end
  
end
