class Record < ApplicationRecord
  has_many :surveillance_results

  # When a record is added, we compare it against all existing surveillance requests
  after_create do

    SurveillanceRequest.find_each do |request|
      # Look for matching field names, matching via regexp to allow generalization (ie cod matches cod.immediate)
      request.fields.split(/\s/).each do |requested_field|
        matching_fields = self.data.keys.grep(/#{requested_field}/)
        matching_fields.each do |matching_field|
          if field_value = self.data[matching_field]
            # Look for values that match surveillance terms
            request.terms.split(/\s/).each do |term|
              # TODO: We should also find near matches using ie Levenshtein distance
              if field_value.downcase.split(/\s/).include?(term.downcase)
                SurveillanceResult.create(record: self, surveillance_request: request, field: matching_field, term: term)
              end
            end
          end
        end
      end
    end
  end

end
