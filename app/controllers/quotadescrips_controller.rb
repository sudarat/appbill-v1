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
    
    respond_to do |format|
      if @quotadescrip.save
        format.html {redirect_to edit_customer_quotation_path(@customer,@quotation), :notice => 'Description was successfully created.'}
      else
        format.html { redirect_to edit_customer_quotation_path(@customer,@quotation), :notice => 'Description Error.'}
      end
    end
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
      redirect_to edit_customer_quotation_path(@customer,@quotation), :notice => 'Description was successfully updated.'
    else
      redirect_to edit_customer_quotation_quotadescrip_path(@customer,@quotation,@quotadescrip), :notice => 'Description Error.'
    end      
  end
  
  def destroy
    @customer = Customer.find(params[:customer_id])
    @quotation = Quotation.find(params[:quotation_id])
    @quotadescrip = @quotation.quotadescrips.find(params[:id])
    @quotadescrip.destroy
    
    respond_to do |format|
        format.html {redirect_to edit_customer_quotation_path(@customer,@quotation), :notice => 'Description delete.'}    
    end

  end
end
