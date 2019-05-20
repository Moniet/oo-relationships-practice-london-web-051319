# guest has many trips
# trips belong to every guests

# initialize guest
# update listing with guest object

class Guest

  @@all = []

  attr_accessor :name, :trips

  def initialize(name)
    @name = name
    @@all << self
  end

  def trips
    Trip.all.select { |trip| trip.guest == self }
  end

  def listings
    trips.map { |trip| trip.listing }.uniq
  end

  def trip_count
    arr = trips
    arr.length
  end

  def self.pro_traveller
    @@all.select { |guest| guest.trip_count > 1 }
  end

  def self.all
    @@all
  end
end
