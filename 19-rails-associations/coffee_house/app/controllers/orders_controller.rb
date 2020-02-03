class OrdersController < ApplicationController
  def new 
    @order = Order.new
    @users = User.all
    @drinks = Drink.all

    render :new
  end 

  def create 
    order = Order.create(order_params)

    redirect_to user_path(order.user)    
  end 

  private 

  def order_params 
    params.require(:order).permit(:size, :user_id, :drink_id)
  end 
end
