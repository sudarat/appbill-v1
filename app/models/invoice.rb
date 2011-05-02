class Invoice < ActiveRecord::Base
  belongs_to :customer
  has_many :invoicedescrips
  
  def details_html
    html = ""
    
    invoicedescrips.each do |detail|
	html += "<tr><td>#{detail.id}</td></tr>"
    end
    
    return html
  end
end
