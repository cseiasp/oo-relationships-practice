class Listing

    attr_reader :city, :listing

    @@all = []

    def initialize(city)
        @city = city
        Listing.all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def guests
        trips.map {|trip| trip.guest}
    end

    def trip_count
        trips.size
    end

    def self.find_all_by_city(city)
        Listing.all.select {|listing| listing.city == city}
    end

    def self.most_popular
        Listing.all.max_by {|listing| listing.trip_count}
    end

end