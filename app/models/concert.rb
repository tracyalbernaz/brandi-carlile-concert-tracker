class Concert < ApplicationRecord 
  validates :artist_name, presence: true
  validates :venue_name, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :date, presence: true
  
end
