require 'test_helper'

class SurveillanceResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get surveillance_results_show_url
    assert_response :success
  end

end
