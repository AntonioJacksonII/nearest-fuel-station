class SearchResults
  def station(location)
    json = NRELService.new.closest_station(location)
    json[:fuel_stations].map do |station_data|
      Station.new(station_data)
    end
  end

  def directions(from, to)
    narrative = ''
    json = MapquestService.new.directions(from, to)
    json[:route][:legs].first[:maneuvers].each do |maneuver|
      narrative += " #{maneuver[:narrative]}"
    end
    narrative
  end
end
