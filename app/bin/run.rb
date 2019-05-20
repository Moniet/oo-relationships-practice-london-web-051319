require_relative "../models/listing.rb"
require_relative "../models/trip.rb"
require_relative "../models/guest.rb"
require "pry"

guest1 = Guest.new('person1')
guest2 = Guest.new('person2')

orange_county = Listing.new("Seattle")
san_junipero = Listing.new("Virtual")

trip1 = Trip.new(guest1, orange_county)
trip2 = Trip.new(guest1, san_junipero)
trip3 = Trip.new(guest2, san_junipero)

binding.pry
