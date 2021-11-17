class DockingStation

  attr_reader :docked_bikes

  def initialize
    @docked_bikes = []
  end

  def release_bike(bike=nil)
    if bike.nil?
      fail ArgumentError, "There are no bikes available"
    else
      bike
    end
  end

  def dock(bike)
    docked_bikes << bike
  end

  def bike_available
    docked_bikes[-1]
  end

end