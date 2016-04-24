class OrdersController < ApplicationController
  def new
  	@customer = Customer.find(params[:id])
  	@order = @customer.orders.build
  end

  def create
  	@customer = Customer.find(params[:order][:customer_id])

  	if @customer.orders.create(order_params)
  		redirect_to customers_path
  	end
  end

  def index
  	@customer = Customer.find(params[:id])
  	@orders = @customer.orders
  end

private 
  def order_params
  	params.require(:order).permit(:product,:qunatity,:price)
  end
end
