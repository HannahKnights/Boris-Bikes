

module BikeContainer
  
  DEFAULT_CAPACITY = 30

    def bikes
        @bikes ||= []
    end

    def capacity
        @capacity ||= DEFAULT_CAPACITY
    end

    def capacity=(value)
        @capacity = value
    end

    def full?
        capacity > bikes.count
    end

    def dock(bike)
        capacity > bikes.count ? bikes << bike : (raise "The Station is at full capacity")
    end

    def release(bike)
        bikes.reject! {|b| b == bike}
    end

    def bike_count
        bikes.count
    end

    def available_bikes
        bikes.reject {|bike| bike.broken?}
    end

end