class RecordsController < ApplicationController

  # This controller only supports external API requests
  skip_before_action :verify_authenticity_token

  # RESTful API endpoint for an EDRS to provide records to this surveillance service
  def create
    @record = Record.create(params.permit(data: {}))
  end

  # TODO: We likely want to handle pending records that get updated (we should track a remote ID)

end
