class OrdersController < ApplicationController
  def new 
    @order = Order.new
    @users = User.all
    @drinks = Drink.all

    # @errors = flash[:errors]

    render :new
  end 

  def create 
    @order = Order.create(order_params)

    if @order.valid?
      redirect_to user_path(order.user)    
    else
      flash[:errors] = @order.errors.full_messages

      redirect_to new_order_path
    end  
  end 

  private 

  def order_params 
    params.require(:order).permit(:size, :user_id, :drink_id)
  end 
end
