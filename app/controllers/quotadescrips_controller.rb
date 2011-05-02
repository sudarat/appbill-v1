class QuotadescripsController < ApplicationController

  def show
    @customer = Customer.find(params[:customer_id])
    @quotation = Quotation.find(params[:quotation_id])
    @quotadescrip = @quotation.quotadescrips.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quotation }
    end
  end
  
  def create
    @customer = Customer.find(params[:customer_id])
    @quotation = Quotation.find(params[:quotation_id])
    @quotadescrip = @quotation.quotadescrips.create(params[:quotadescrip])
    
    redirect_to customer_quotation_path(@customer,@quotation)
  end
  
  def edit
    @customer = Customer.find(params[:customer_id])
    @quotation = Quotation.find(params[:quotation_id])
    @quotadescrip = @quotation.quotadescrips.find(params[:id])
  end
  
  def update
    @customer = Customer.find(params[:customer_id])
    @quotation = Quotation.find(params[:quotation_id])
    @quotadescrip = @quotation.quotadescrips.find(params[:id])
    if @quotadescrip.update_attributes(params[:quotadescrip])
      redirect_to customer_quotation_path(@customer,@quotation)
    else
      render :action => "edit"
    end
      
  end
  
  def destroy
    @customer = Customer.find(params[:customer_id])
    @quotation = Quotation.find(params[:quotation_id])
    @quotadescrip = @quotation.quotadescrips.find(params[:id])
    @quotadescrip.destroy
    
 
    redirect_to customer_quotation_path(@customer,@quotation)
  end
end
