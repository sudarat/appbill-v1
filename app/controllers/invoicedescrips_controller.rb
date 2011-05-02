class InvoicedescripsController < ApplicationController
   def show
    @customer = Customer.find(params[:customer_id])
    @invoice = Invoice.find(params[:invoice_id])
    @invoicedescrip = @invoicetion.invoicedescrips.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @invoice }
    end
  end
  
  def create
    @customer = Customer.find(params[:customer_id])
    @invoice = Invoice.find(params[:invoice_id])
    @invoicedescrip = @invoice.invoicedescrips.create(params[:invoicedescrip])
    
    redirect_to customer_invoice_path(@customer,@invoice)
  end
  
  def edit
    @customer = Customer.find(params[:customer_id])
    @invoice = Invoice.find(params[:invoice_id])
    @invoicedescrip = @invoice.invoicedescrips.find(params[:id])
  end
  
  def update
    @customer = Customer.find(params[:customer_id])
    @invoice = Invoice.find(params[:invoice_id])
    @invoicedescrip = @invoice.invoicedescrips.find(params[:id])
    if @invoicedescrip.update_attributes(params[:invoicedescrip])
      redirect_to customer_invoice_path(@customer,@invoice)
    else
      render :action => "edit"
    end
      
  end
  
  def destroy
    @customer = Customer.find(params[:customer_id])
    @invoice = Invoice.find(params[:invoice_id])
    @invoicedescrip = @invoice.invoicedescrips.find(params[:id])
    @invoicedescrip.destroy
    
 
    redirect_to customer_invoice_path(@customer,@invoice)
  end
end