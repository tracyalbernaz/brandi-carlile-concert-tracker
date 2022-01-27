class ConcertsController < ApplicationController

  def index
    @concerts = Concert.all
  end

  def show 
    @concert = Concert.find(params[:id])
  end

  def new 
    @concert = Concert.new
  end

  def create 
    def concert_params
      params.require(:concert).permit(:artist_name, :coheadliner_name, :opener_name_1, :opener_name_2, :festival_name, :venue_name, :city, :state, :date)
    end
   
    @concert = Concert.new(concert_params)

    if @concert.save
      flash[:notice] = "Concertt added successfully"
      redirect_to @concert
    else
      flash.now[:error] = @concert.errors.full_messages.to_sentence
      render :new
    end
  end
end

