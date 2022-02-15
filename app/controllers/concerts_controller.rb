class ConcertsController < ApplicationController

  def index


    unparsed_seatgeek_data = Faraday.get( EVENT_URL)
    
    parsed_seatgeek_data = JSON.parse(unparsed_seatgeek_data.body)
    organized_concert_info = []
    parsed_seatgeek_data["events"].each do |event|
      organized_concert_info << { venue: event["venue"]["name_v2"] }
    end
    # parsed_seatgeek_data["events"][0]["venue"]["name_v2"]
    # binding.pry
    @geek_concert_data = organized_concert_info
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

