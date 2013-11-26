require_relative "../lib/bike"

describe Bike do 

  it "should not be broken when we create it" do
    bike = Bike.new
    expect(bike).not_to be_broken
  end

end