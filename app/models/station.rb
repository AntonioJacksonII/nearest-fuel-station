class Station
  attr_reader :name,
              :street,
              :city,
              :state,
              :zip,
              :fuel_type,
              :access_times

  def initialize(attributes)
    @name = attributes[:station_name]
    @street = attributes[:street_address]
    @city = attributes[:city]
    @state = attributes[:state]
    @zip = attributes[:zip]
    @fuel_type = attributes[:fuel_type_code]
    @access_times = attributes[:access_days_time]
  end

  def address
    @street + ", " + @city + " " +  @state + " " + @zip
  end
end
