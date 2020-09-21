class Map

  def conn
    Faraday.new(url: "https://maps.googleapis.com") do |faraday|
      faraday.params['key'] = ENV["DIRECTION_API_KEY"]
      # faraday.params['origin'] = location
      # faraday.params['destination'] = @stations.first.address
    end
  end

  def directions(location, destination)
    response_2 = conn.get("/maps/api/directions/json") do |req|
      req.params['origin'] = location
      req.params['destination'] = destination
                                  # @stations.first.address
    end

    JSON.parse(response_2.body, symbolize_names: true)
  end
end
