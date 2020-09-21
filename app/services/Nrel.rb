class Nrel

  def conn
    Faraday.new(url: "https://developer.nrel.gov") do |faraday|
      faraday.params['api_key'] = ENV["STATION_API_KEY"]
      # faraday.params['location'] = location
      # faraday.params['fuel_type'] = 'ELEC'
      # faraday.params['limit'] = 10
    end
  end

  def nearest_station(location)
    response = conn.get("api/alt-fuel-stations/v1/nearest.json") do |req|
      req.params['location'] = location
      req.params['fuel_type'] = 'ELEC'
      req.params['limit'] = 10
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
