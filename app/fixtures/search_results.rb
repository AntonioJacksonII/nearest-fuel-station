class SearchResults
  def station(location)
    json = NRELService.new.closest_station(location)
    json[:fuel_stations].map do |station_data|
      Station.new(station_data)
    end
  end
end
