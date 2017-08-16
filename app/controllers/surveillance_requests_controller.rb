class SurveillanceRequestsController < ApplicationController

  def create
    SurveillanceRequest.create(params.require(:surveillance_request).permit(:name, :fields, :terms))
    redirect_to :root
  end

end
