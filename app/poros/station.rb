class Station
  attr_reader :name, :fuel_type, :access_time

  def initialize(station)
    @name = station[:station_name]
    @fuel_type = station[:fuel_type_code]
    @city = station[:city]
    @state = station[:state]
    @street_address = station[:street_address]
    @zip = station[:zip]
    @access_time = station[:access_days_time]
  end

  def address
    "#{@street_address}  #{@city}  #{@state} #{@zip}"
  end
end
