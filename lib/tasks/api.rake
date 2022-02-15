namespace :api do 
  task :test => [:environment] do
    EVENT_URL = "https://api.seatgeek.com/2/events/?client_id=MjUzOTQwMDN8MTY0MjQ1MTQyMS41NjE3NDcz&performers.id=363"
    response = Faraday.get(EVENT_URL)
    binding.pry
  end
end