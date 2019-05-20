class Listing

  @@all = []

  attr_reader :city
  attr_accessor :trip_count

  def initialize(city)
    @city = city
    @@all << self
    @trip_count = 0
  end

  def trips
    Trip.all.select { |trip| trip.listing == self }
  end

  def guests
    trips.map { |trip| trip.guest }
  end

  def trip_count
    @trip_count
  end

  def self.most_popular
    arr = @@all.map {|list| list.trip_count}
    largest = arr.sort.last

    @@all.find {|listing| listing.trip_count == largest}
  end

  def self.find_all_by_city(city)
    @@all.select { |listing| listing.city == city }
  end

  def self.all
    @@all
  end
end

# listing has many guests and trips
# guest has many trips through listings
# each trip belongs to a listing and a guest
