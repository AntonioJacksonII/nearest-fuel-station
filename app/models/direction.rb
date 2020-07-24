class Direction
  def initialize(attributes)
    @distance = attributes[:route]
    @travel_time = attributes[:travel_time]
  end
end
