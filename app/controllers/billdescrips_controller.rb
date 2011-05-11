class BilldescripsController < ApplicationController
  
    def show
    @customer = Customer.find(params[:customer_id])
    @bill = Bill.find(params[:bill_id])
    @billdescrip = @bill.billdescrips.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bill }
    end
  end
  
  def create
    @customer = Customer.find(params[:customer_id])
    @bill = Bill.find(params[:bill_id])
    @billdescrip = @bill.billdescrips.create(params[:billdescrip])
    
    respond_to do |format|
      if @billdescrip.save
        format.html {redirect_to edit_customer_bill_path(@customer,@bill), :notice => 'Description was successfully created.'}
      else
        format.html { redirect_to edit_customer_bill_path(@customer,@bill), :notice => 'Description Error.'}
      end
    end
  end
  
  def edit
    @customer = Customer.find(params[:customer_id])
    @bill = Bill.find(params[:bill_id])
    @billdescrip = @bill.billdescrips.find(params[:id])
  end
  
  def update
    @customer = Customer.find(params[:customer_id])
    @bill = Bill.find(params[:bill_id])
    @billdescrip = @bill.billdescrips.find(params[:id])
    if @billdescrip.update_attributes(params[:billdescrip])
      redirect_to edit_customer_bill_path(@customer,@bill), :notice => 'Description was successfully updated.'
    else
      redirect_to edit_customer_bill_billdescrip_path(@customer,@bill,@billdescrip), :notice => 'Description Error.'
    end
      
  end
  
  def destroy
    @customer = Customer.find(params[:customer_id])
    @bill = Bill.find(params[:bill_id])
    @billdescrip = @bill.billdescrips.find(params[:id])
    @billdescrip.destroy
    respond_to do |format|
        format.html {redirect_to edit_customer_bill_path(@customer,@bill), :notice => 'Description delete.'}    
    end
  end
end
