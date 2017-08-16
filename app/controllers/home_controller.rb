class HomeController < ApplicationController

  def index
    @surveillance_requests = SurveillanceRequest.all
  end

end
