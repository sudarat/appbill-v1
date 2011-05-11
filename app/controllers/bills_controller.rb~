class BillsController < ApplicationController
    
  def index
    @bills = Bill.all
  end
  
  def new
    @customer  = Customer.find(params[:customer_id])
    @bill = @customer.bills.new
  end
  
  def create
    @customer  = Customer.find(params[:customer_id])
    @bill = @customer.bills.create(params[:bill])
    
    respond_to do |format|
      if @bill.save
        format.html { redirect_to customer_bill_path(@customer,@bill, :notice => 'Customer was successfully created.') }
      else
        format.html { render :action => "new" }
        #format.xml  { render :xml => @customer.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @customer = Customer.find(params[:customer_id])
    @bill = @customer.bills.find(params[:id])
    @bill.destroy
    redirect_to bills_path,:notice => 'Bill delete.'
  end
  
  def edit
    @customer = Customer.find(params[:customer_id])
    @bill = @customer.bills.find(params[:id])
  end
  
  def show
    @customer = Customer.find(params[:customer_id])
    @bill = @customer.bills.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bill }
    end
  end
    
  def update 
    @customer = Customer.find(params[:customer_id])
    @bill = Bill.find(params[:id])
    
    if @bill.update_attributes(params[:bill])
      redirect_to(bills_path, :notice => 'Bill was successfully updated.')
    else
      render :action => "edit"
    end      
  end
  
  def print
    
    @customer = Customer.find(params[:customer_id])
    @bill = @customer.bills.find(params[:id])
    render :layout => 'print'
  end
end
