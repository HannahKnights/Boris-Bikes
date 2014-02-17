require_relative "bike_container"
require_relative "bike"

class Van

    include BikeContainer

    DEFAULT_CAPACITY = 30

    def initialize(options ={})
        @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
        @bikes ||= []
    end

    def move_bikes_to_garage(garage)
      broken_bikes = bikes.select{ |bike| bike.broken? }
      garage.bikes = broken_bikes
    end


    # def move_bikes_to_garage(garage)
    #   broken_bikes = bikes.select{ |bike| bike.broken? }
    #   garage.bikes = broken_bikes
    # end

end

