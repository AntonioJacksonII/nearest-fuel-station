class Direction
  attr_reader :distance,
              :travel_time

  def initialize(attributes)
    @distance = attributes[:route][:distance]
    @travel_time = attributes[:route][:formattedTime]
    @legs = attributes[:route][:legs]
  end

  def maneuvers_narrative
    narrative = ''
    @legs.each do |leg|
      leg[:maneuvers].each do |maneuver|
        narrative << " #{maneuver[:narrative]}"
      end
    end
    narrative
  end
end
