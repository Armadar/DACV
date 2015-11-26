require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get pending_services" do
    get :pending_services
    assert_response :success
  end

  test "should get my_services" do
    get :my_services
    assert_response :success
  end

end
