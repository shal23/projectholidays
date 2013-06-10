class AttractionMapController < ApplicationController
  def index
  	@json = Attraction.all.to_gmaps4rails
  end
end
