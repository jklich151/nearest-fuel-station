class SearchController < ApplicationController
  def index
    location = params[:location]
    search = StationSearch.new(location)
    @stations = search.stations
    @directions = search.directions
    # results = Nrel.new.nearest_station(location)
    # conn = Faraday.new(url: "https://developer.nrel.gov") do |faraday|
    #   faraday.params['api_key'] = ENV["STATION_API_KEY"]
    #   faraday.params['location'] = location
    #   faraday.params['fuel_type'] = 'ELEC'
    #   faraday.params['limit'] = 10
    # end
    #
    # response = conn.get("api/alt-fuel-stations/v1/nearest.json")
    #
    # json = JSON.parse(response.body, symbolize_names: true)
                # json
    # @stations = results[:fuel_stations].map do |station|
    #   Station.new(station)
    # end
    # conn_2 = Faraday.new(url: "https://maps.googleapis.com") do |faraday|
    #   faraday.params['key'] = ENV["DIRECTION_API_KEY"]
    #   faraday.params['origin'] = location
    #   faraday.params['destination'] = @stations.first.address
    # end
    # response_2 = conn_2.get("/maps/api/directions/json")
    #
    # json_2 = JSON.parse(response_2.body, symbolize_names: true)
    # results_2 = Map.new.directions(location, @stations.first.address)
    # direction_info = results_2[:routes][0][:legs]
    # @directions = Direction.new(direction_info)
  end
end
