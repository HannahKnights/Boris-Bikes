class DockingStation

    DEFAULT_CAPACITY = 30

    def initialize(options ={})
        @capacity = options.fetch(:capacity) || DEFAULT_CAPACITY
        @bikes = []
    end

    def space?
        @capacity > @bikes.count
    end

    def dock(bike)
        @capacity > @bikes.count ? @bikes << bike : (raise Exception)
    end

    def capacity 
        @capacity
    end

    def release(bike)
        @bikes.reject! {|b| b == bike}
    end

    def bikes
        @bikes
    end

end