require_relative '../lib/bike_container'

class ContainerHolder
    include BikeContainer
end

describe BikeContainer do
  
  CAPACITY = 30

  let(:bike) {Bike.new}
  let(:holder) {ContainerHolder.new}

  it "should accept a bike" do
    expect(holder.bike_count).to eq(0)
    holder.dock(bike)
    expect(holder.bike_count).to eq(1)
  end


  it "should know if it has space for a bike" do
    10.times{holder.dock(bike)}
    expect(holder.full?).not_to be_true
  end

  it "should know if the holder is empty" do
    expect(holder.empty?).to be_true
  end

  # it "should not take anything other than a bike" do
  #   holder.dock(bike)
  #   bike.class != Bike
  #   expect(holder.dock(bike)).to eq "This is not a bike! |:^0 }{"
  # end

  it "should know if it doesn't have space for a bike" do
    30.times{holder.dock(bike)}
    expect{holder.dock(bike)}.to raise_error "The Station is at full capacity"
  end
  
  it "should not be able to dock a bike if full" do
    holder.dock(bike)
    expect(lambda{ holder.dock}).to raise_error
  end

  it "should be able to release a bike" do
    holder.dock(bike)
    expect(holder.bikes.count).to eq(1)
    holder.release(bike)
    expect(holder.bikes.count).to eq(0)
  end

  it "should not release a broken bike" do 
    holder.dock(bike.break)
    expect(lambda{holder.release}).to raise_error
  end 

  it "should provide a list of available bikes" do
    working_bike, broken_bike = Bike.new, Bike.new
    broken_bike.break
    holder.dock(working_bike)
    holder.dock(broken_bike)
    expect(holder.available_bikes).to eq([working_bike])
  end

  it "should raise an error if the bike does not exist" do
    bike_count = 0
    expect {release(bike)}.to raise_error
  end

  it "should provide a list of broken bikes" do
  bike.break
  holder.dock(bike)
  expect(holder.repairs_needed?).to be_true
  end

end