require_relative "bike_container"

class DockingStation

    include BikeContainer

    DEFAULT_CAPACITY = 30

    def initialize(options ={})
        @capacity = options.fetch(:capacity) || DEFAULT_CAPACITY
        @bikes ||= []
    end
end

