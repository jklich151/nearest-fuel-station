class StationSearch

  def initialize(location)
    @location = location
    @stations = stations
  end

  def stations
    results = Nrel.new.nearest_station(@location)
    results[:fuel_stations].map do |station|
      Station.new(station)
    end
  end

  def directions
    results_2 = Map.new.directions(@location, @stations.first.address)
    direction_info = results_2[:routes][0][:legs]
    Direction.new(direction_info)
  end
end
