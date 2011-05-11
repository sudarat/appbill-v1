class InvoicedescripsController < ApplicationController
  
  def show
    @customer = Customer.find(params[:customer_id])
    @invoice = Invoice.find(params[:invoice_id])
    @invoicedescrip = @invoice.invoicedescrips.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @invoice }
    end
  end
  
  def create
    @customer = Customer.find(params[:customer_id])
    @invoice = Invoice.find(params[:invoice_id])
    @invoicedescrip = @invoice.invoicedescrips.create(params[:invoicedescrip])
    
    respond_to do |format|
      if @invoicedescrip.save
        format.html {redirect_to edit_customer_invoice_path(@customer,@invoice), :notice => 'Description was successfully created.'}
      else
        format.html { redirect_to edit_customer_invoice_path(@customer,@invoice), :notice => 'Description Error.'}
      end
    end
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
      redirect_to edit_customer_invoice_path(@customer,@invoice), :notice => 'Description was successfully updated.'
    else
      redirect_to edit_customer_invoice_invoicedescrip_path(@customer,@invoice,@invoicedescrip), :notice => 'Description Error.'
    end
  end
  
  def destroy
    @customer = Customer.find(params[:customer_id])
    @invoice = Invoice.find(params[:invoice_id])
    @invoicedescrip = @invoice.invoicedescrips.find(params[:id])
    @invoicedescrip.destroy
     
    respond_to do |format|
        format.html {redirect_to edit_customer_invoice_path(@customer,@invoice), :notice => 'Description delete.'}    
    end
  end
end
