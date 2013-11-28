require_relative "../lib/van"
require_relative "../lib/bike"

describe Van do

  let(:bike) {Bike.new}
  let(:van) {Van.new}
  let(:garage) {Garage.new}

    
  it "should move bikes from the docking station to garage" do
    expect(garage.bike_count).to eq(0)
    van.dock(bike)
    van.move_bikes_to_garage(garage)
    expect(garage.bike_count).to eq(1)
  end

end
