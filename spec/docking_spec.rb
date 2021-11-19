require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
 
  it "Should get a bike" do
    bike = Bikes.new
    docking_station = DockingStation.new
    docking_station.dock(bike)
    expect(docking_station.release_bike(bike)).to eq(bike)
  end

  it "Expects the bike to be working" do
    bike = Bikes.new
    expect(bike.working?).to eq true
  end

  it "Should be true when call the method working on DockingStation.release_bike" do
    docking_station = DockingStation.new
    bike = Bikes.new
    docking_station.dock(bike)
    expect(docking_station.release_bike(bike).working?).to eq true
  end

  it "Should be able to dock a bike" do
    docking_station = DockingStation.new
    bike = Bikes.new
    expect(docking_station.dock(bike)).to include bike
  end

  it "Should be able to see if a bike has been docked" do
    docking_station = DockingStation.new
    bike = Bikes.new
    docking_station.dock(bike)
    expect(docking_station.bike_available).to eq bike
  end

  it "Should not release a bike when none are available" do
    docking_station = DockingStation.new
    bike = Bikes.new
    expect { docking_station.release_bike(bike)}.to raise_error "There are no bikes available"
  end

  it "Shouldn't accept more bikes than docking station capacity" do
    docking_station = DockingStation.new
    bike = Bikes.new
    20.times { docking_station.dock(bike)}
    expect { docking_station.dock(bike)}. to raise_error "You have reached maximum capacity"
  end

  it "Should release 20 bikes" do
    docking_station = DockingStation.new
    bike = Bikes.new
    20.times { docking_station.dock(bike)}
    expect(20.times { docking_station.release_bike(bike)}).to eq(20)
  end

end