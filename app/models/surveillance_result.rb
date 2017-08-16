class SurveillanceResult < ApplicationRecord
  belongs_to :surveillance_request
  belongs_to :record
end
