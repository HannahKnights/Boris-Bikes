require_relative "bike_container"
require_relative "bike"

class Garage

  attr_accessor :bikes

  include BikeContainer

  DEFAULT_CAPACITY = 30

  def initialize(options ={})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes ||= []
  end

  def fix_bikes
    fixed_bikes = []
    bikes.each { |bike| fixed_bikes << bike.fix }
    fixed_bikes
  end

end

