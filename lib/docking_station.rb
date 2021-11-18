class DockingStation

  # attr_reader :docked_bikes

  def initialize
    @docked_bikes = [Bike.new("bike"), Bike.new("bike"), Bike.new("bike"), Bike.new("bike"), Bike.new("bike")]
  end

  def release_bike(bike, num_of_bikes)
    if @docked_bikes.empty?
      fail ArgumentError, "There are no bikes available"
    else
      @docked_bikes.each do |bike| 
        num_of_bikes.times { bike }
      end
    end
  end

  def dock(bike, num_of_bikes)
    # if docked_bikes.include? bike
      fail "You have reached maximum capacity" if @docked_bikes.include?(num_of_bikes.times {bike})
      @docked_bikes << bike
  end

  def bike_available
    @docked_bikes[-1]
  end

end