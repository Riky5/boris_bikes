class DockingStation

  attr_reader :docked__bikes

  def initialize
    @docked_bikes = []
  end

  def release_bike(bike)
    if @docked_bikes.empty?
      fail "There are no bikes available"
    else
      @docked_bikes.pop
    end
  end

  def dock(bike)
    # if docked_docked_bikes
      fail "You have reached maximum capacity" if @docked_bikes.count >= 20
      @docked_bikes << bike
  end

  def bike_available
    @docked_bikes[-1]
  end

end