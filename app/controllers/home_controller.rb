class HomeController < ApplicationController
  def index
    @users = User.all
    @events = Event.all
    @deals = Deal.all
  end
end
