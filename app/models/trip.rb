# trips belongs to a listing and a guest
require "pry"

class Trip
  @@all = []

  attr_reader :guest, :listing

  def initialize(guest, listing)
    @guest = guest
    @listing = listing
    @listing.trip_count += 1
    @@all << self
  end

  def self.all
    @@all
  end
end
