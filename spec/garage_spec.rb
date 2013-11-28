require_relative "../lib/garage"
require_relative "../lib/bike"

describe Garage do
  
  let(:bike) {Bike.new}
  let(:garage) {Garage.new}

  it "should fix bikes" do
  bike.break
  garage.dock(bike)
  garage.fix_bikes
  expect(bike.broken?).to be_false
  end



end

