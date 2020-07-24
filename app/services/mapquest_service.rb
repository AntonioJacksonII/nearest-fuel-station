class MapquestService

  def conn
    Faraday.new('https://www.mapquestapi.com') do |req|
      req.params['key'] = ENV['MAPQUEST_KEY']
    end
  end

  def directions(from, to)
    response = conn.get('/directions/v2/route') do |req|
      req.params['from'] = from
      req.params['to'] = to
      req.params['outFormat'] = 'json'
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
