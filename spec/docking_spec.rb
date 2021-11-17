require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
 
  it "Should get a bike" do
    bike = Bike.new(bike)
    docking_station = DockingStation.new
    expect(docking_station.release_bike(bike)).to be_instance_of(Bike)
  end
  it "Expects the bike to be working" do
    bike = Bike.new(bike)
    expect(bike.working?).to eq true
  end
  it "Should get true when call the method working on DockingStation.release_bike" do
    docking_station = DockingStation.new
    bike = Bike.new(bike)
    expect(docking_station.release_bike(bike).working?).to eq true
  end
end