class InvoicesController < ApplicationController
  #layout "print", :only => [:index]
  
  def index
    @invoices = Invoice.all
  end
  
  def new
    @customer  = Customer.find(params[:customer_id])
    @invoice = @customer.invoices.new
  end
  
  def create
    @customer  = Customer.find(params[:customer_id])
    @invoice = @customer.invoices.create(params[:invoice])
    redirect_to customer_invoice_path(@customer,@invoice)
  end
  
  def destroy
    @customer = Customer.find(params[:customer_id])
    @invoice = @customer.invoices.find(params[:id])
    @invoice.destroy
    redirect_to invoices_path
  end
  
  def edit
    @customer = Customer.find(params[:customer_id])
    @invoice = @customer.invoices.find(params[:id])
  end
  
  def show
    @customer = Customer.find(params[:customer_id])
    @invoice = @customer.invoices.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project }
    end
  end
    
  def update 
    @customer = Customer.find(params[:customer_id])
    @invoice = Invoice.find(params[:id])
    
    if @invoice.update_attributes(params[:invoice])
      #redirect_to(customer_quotation_path, :notice => 'Quotation was successfully updated.')
      redirect_to(invoices_path, :notice => 'Invoice was successfully updated.')
    else
      render :action => "edit"
    end      
  end
  
  def print
    #render :layout => 'print'
    @customer = Customer.find(params[:customer_id])
    @invoice = @customer.invoices.find(params[:id])
  end

end
