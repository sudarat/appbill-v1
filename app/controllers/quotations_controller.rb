class QuotationsController < ApplicationController
  
  def index
    @quotations = Quotation.all
  end
  
  def new
    @customer  = Customer.find(params[:customer_id])
    @quotation = @customer.quotations.new
  end
  
  def create
    @customer  = Customer.find(params[:customer_id])
    @quotation = @customer.quotations.create(params[:quotation])
    redirect_to customer_quotation_path(@customer,@quotation)
  end
  
  def destroy
    @customer = Customer.find(params[:customer_id])
    @quotation = @customer.quotations.find(params[:id])
    @quotation.destroy
    redirect_to quotations_path
  end
  
  def edit
    @customer = Customer.find(params[:customer_id])
    @quotation = @customer.quotations.find(params[:id])
  end
  
  def show
    @customer = Customer.find(params[:customer_id])
    @quotation = @customer.quotations.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project }
    end
  end
    
  def update 
    @customer = Customer.find(params[:customer_id])
    @quotation = Quotation.find(params[:id])
    
    if @quotation.update_attributes(params[:quotation])
      #redirect_to(customer_quotation_path, :notice => 'Quotation was successfully updated.')
      redirect_to(quotations_path, :notice => 'Quotation was successfully updated.')
    else
      render :action => "edit"
    end      
  end
  
end
