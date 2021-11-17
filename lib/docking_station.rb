class DockingStation

  attr_reader :docked_bikes

  def initialize
    @docked_bikes = []
  end

  def release_bike(bike)
    bike
  end

  def dock(bike)
    docked_bikes << bike
  end

  def bike_available
    docked_bikes[-1]
  end

end