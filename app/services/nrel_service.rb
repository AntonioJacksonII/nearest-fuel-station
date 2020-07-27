class NRELService

  def conn
    Faraday.new('https://developer.nrel.gov') do |req|
      req.params['api_key'] = ENV['NREL_KEY']
    end
  end

  def closest_station(location)
    response = conn.get('/api/alt-fuel-stations/v1/nearest.json') do |req|
      req.params['location'] = location
      req.params['limit'] = 1
      req.params['fuel_type'] = 'ELEC'
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
