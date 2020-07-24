class SearchController < ApplicationController
  def index
    location = params[:location]
    search_results = SearchResults.new
    @station = search_results.station(location).first
    @directions = search_results.directions(location, @station.address)
  end
end
