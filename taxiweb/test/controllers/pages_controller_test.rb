require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get historyservicies" do
    get :historyservicies
    assert_response :success
  end

end
