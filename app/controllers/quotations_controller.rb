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
    
    respond_to do |format|
      if @quotation.save
        format.html {redirect_to customer_quotation_path(@customer,@quotation), :notice => 'quotation was successfully created.'}
      else
        format.html { render :action => "new" }
        
      end
    end
  end
  
  def destroy
    @customer = Customer.find(params[:customer_id])
    @quotation = @customer.quotations.find(params[:id])
    @quotation.destroy
    redirect_to quotations_path,:notice => 'quotation delete.'
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
      redirect_to(quotations_path, :notice => 'Quotation was successfully updated.')
    else
      render :action => "edit"
    end      
  end
  
  def print
    @customer = Customer.find(params[:customer_id])
    @quotation = @customer.quotations.find(params[:id])
    render :layout => 'print'
  end
  
end
