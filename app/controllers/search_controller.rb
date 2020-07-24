class SearchController < ApplicationController
  def index
    location = params[:location]
    search_results = SearchResults.new
    @station = search_results.station(location).first
  end
end
