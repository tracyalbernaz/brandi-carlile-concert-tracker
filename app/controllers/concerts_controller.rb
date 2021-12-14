class ConcertsController < ApplicationController

  def index
    @concerts = Concert.all
  end

  def show 
    @concert = Concert.find(params[:id])
    # @reviews = @restaurant.reviews
    # @catergories = restaurant.catergories
  end

  # def new 
  #   @restaurant = Restaurant.new
  # end

  # def create 
  #   def restaurant_params
  #     params.require(:restaurant).permit(:name, :address, :city, :state, :zip, :description)
  #   end
   
  #   @restaurant = Restaurant.new(restaurant_params)

  #   if @restaurant.save
  #     flash[:notice] = "Restaurant added successfully"
  #     redirect_to @restaurant
  #   else
  #     flash.now[:error] = @restaurant.errors.full_messages.to_sentence
  #     render :new
  #   end
  # end
end