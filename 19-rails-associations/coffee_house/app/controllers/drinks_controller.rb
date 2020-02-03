class DrinksController < ApplicationController
  before_action :get_drink, only: [:show, :edit, :update, :destroy]

  def index
    @drinks = Drink.all

    # render :index
  end

  def show 
    # @drink = Drink.find(params[:id]) -- Moved to a before action

  end   

  def new 
    @drink = Drink.new 

    # render :new
  end 


  def create 
   drink = Drink.create(drink_params)

   redirect_to drink_path(drink.id)
  end 

  def edit 
    # @drink = Drink.find(params[:id]) -- Moved to a before action
  end 

  def update 
    # @drink = Drink.find(params[:id]) -- Moved to a before action
    @drink.update(drink_params)

    redirect_to drink_path(@drink)
  end 

  def destroy 
    # @drink = Drink.find(params[:id]) -- Moved to a before action
    @drink.destroy 

    redirect_to drinks_path
  end 

  private 

  def drink_params  
    params.require(:drink).permit(:name, :size, :hot, :img_url)
  end 

  def get_drink
    @drink = Drink.find(params[:id])
  end 


end
