class SurveillanceRequestsController < ApplicationController

  def create
    SurveillanceRequest.create(params.require(:surveillance_request).permit(:name, :fields, :terms))
    # TODO: Whenever we create a new surveilance request we could run the request against all existing records
    redirect_to :root
  end

  # This is only used to render an HTML fragment to update the main page, so no layout
  def index
    @surveillance_requests = SurveillanceRequest.all
    render layout: false
  end

end
