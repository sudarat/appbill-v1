class InvoicesController < ApplicationController
  
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
    
    respond_to do |format|
      if @invoice.save
        format.html {redirect_to newinvoice_customer_invoice_path(@customer,@invoice), :notice => 'invoice was successfully created.'}
      else
        format.html { render :action => "new" }
        
      end
    end
  end
  
  def destroy
    @customer = Customer.find(params[:customer_id])
    @invoice = @customer.invoices.find(params[:id])
    @invoice.destroy
    redirect_to invoices_path,:notice => 'Invoice delete.'
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
      format.xml  { render :xml => @invoice }
    end
  end
    
  def update 
    @customer = Customer.find(params[:customer_id])
    @invoice = Invoice.find(params[:id])
    
    if @invoice.update_attributes(params[:invoice])
      redirect_to(invoices_path, :notice => 'invoice was successfully updated.')
    else
      render :action => "edit"
    end      
  end
  
  def print
    @customer = Customer.find(params[:customer_id])
    @invoice = @customer.invoices.find(params[:id])
    render :layout => 'print'
  end
  
  def newinvoice
    @customer = Customer.find(params[:customer_id])
    @invoice = @customer.invoices.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project }
    end
  end

end
