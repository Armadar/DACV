require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get estimate_cost" do
    get :estimate_cost
    assert_response :success
  end

end
