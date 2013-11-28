

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

    def dock(bike)
        # return "This is not a bike! |:^0 }{" if bike.class != Bike  
        capacity > bikes.count ? bikes << bike : (raise "The Station is at full capacity")
     # bikes.each do |bike|
      #   if capacity > bikes.count
      #       bikes << bike
      #   else
      #       raise "The van is at full capacity"
      #   end
      #   bikes.count
      # end
    end

    def release(bike)
        bikes.reject! {|b| b == bike}
    end

    def bike_count
        bikes.count
    end

    def full?
        capacity <= bikes.count
    end

    def available_bikes
        bikes.reject {|bike| bike.broken?}
    end

    def empty?
       bikes.count == 0
    end

    def repairs_needed?
        array = bikes.select{ |bike| bike.broken? }
        array.empty? ? false : true
    end

end