# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

redrocks = Concert.create!(
  artist_name: "Brandi Carlile (Full Band)", 
  opener_name_1: "Shovels and Rope", 
  opener_name_2: "Secret Sister", 
  venue_name: "Red Rocks Amphitheatre", 
  city: "Morrison",
  state: "Colorado",
  date: "August 12, 2018"
)

newportfolk = Concert.create!(
  artist_name: "Brandi Carlile (Full Band)", 
  festival_name: "Newport Folk Festival",  
  venue_name: "Fort Adams State Park", 
  city: "Newport",
  state: "Rhode Island",
  date: "July 31, 2010"
)

solofundraiser = Concert.create!(
  artist_name: "Brandi Carlile (Solo)",  
  venue_name: "Bardavon 1869 Opera House", 
  city: "Poughkeepsie",
  state: "New York",
  date: "December 5, 2015"
)

cmac = Concert.create!(
  artist_name: "Brandi Carlile (Trio)", 
  opener_name_1: "Rickie Lee Jones", 
  venue_name: "CMAC", 
  city: "Canandaigua",
  state: "New York",
  date: "July 24, 2021"
)

thompsonspoint = Concert.create!(
  artist_name: "Brandi Carlile (Full Band)", 
  coheadliner_name: "Jason Isbell", 
  venue_name: "Thompson's Point", 
  city: "Portland",
  state: "Maine",
  date: "July 21, 2018"
)

