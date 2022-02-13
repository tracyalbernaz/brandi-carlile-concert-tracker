class Api::ConcertDataController < ApplicationController
  
  # API_URL = "https://api.seatgeek.com/2/performers/363?client_id=MjUzOTQwMDN8MTY0MjQ1MTQyMS41NjE3NDcz"
  API_URL = "https://api.seatgeek.com/2/performers/363?client_id=#{ENV["SEATGEEK_KEY"]}"
  
  EVENT_URL = "https://api.seatgeek.com/2/events/?client_id=MjUzOTQwMDN8MTY0MjQ1MTQyMS41NjE3NDcz&performers.id=363"
  # 
  def index
    unparsed_seatgeek_data = Faraday.get( EVENT_URL)
    
    parsed_seatgeek_data = JSON.parse(unparsed_seatgeek_data.body)
    parsed_seatgeek_data["events"].each do |event|
      puts event["venue"]["name_v2"]
    end
    # parsed_seatgeek_data["events"][0]["venue"]["name_v2"]
    # binding.pry
    render json:  parsed_seatgeek_data
  end
  

end
