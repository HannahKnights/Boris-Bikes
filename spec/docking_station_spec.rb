require_relative "../lib/docking_station"
require_relative "../lib/bike"


describe DockingStation do

  let(:bike) {Bike.new}
  CAPACITY = 20

  let(:docking_station) {DockingStation.new(:capacity => CAPACITY)}


  # it "should know if it has space for a bike" do
  #   expect(docking_station.full?).to be_true
  # end

  # it "should know if it doesn't have space for a bike" do
  #   CAPACITY.times{docking_station.dock(bike)}
  #   expect(docking_station.full?).to be_false
  # end
  
  # it "should not be able to dock a bike if full" do
  #   docking_station.dock(bike)
  #   expect(lambda{ docking_station.dock}).to raise_error
  # end

  # it "should be able to release a bike" do
  #   docking_station.dock(bike)
  #   expect(docking_station.bikes.count).to eq(1)
  #   docking_station.release(bike)
  #   expect(docking_station.bikes.count).to eq(0)
  # end

  # it "should not release a broken bike" do 
  #   docking_station.dock(bike.break)
  #   expect(lambda{docking_station.release}).to raise_error
  # end 

  # it "should provide a list of available bikes" do
  #   working_bike, broken_bike = Bike.new, Bike.new
  #   broken_bike.break
  #   docking_station.dock(working_bike)
  #   docking_station.dock(broken_bike)
  #   expect(docking_station.available_bikes).to eq([working_bike])
  # end

end
