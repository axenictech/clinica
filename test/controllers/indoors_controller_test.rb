require 'test_helper'

class IndoorsControllerTest < ActionController::TestCase
  test "should get indoor_dashboard" do
    get :indoor_dashboard
    assert_response :success
  end

end
