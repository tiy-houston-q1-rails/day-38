require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get public" do
    get :public
    assert_response :success
  end

  test "should get secure" do
    get :secure
    assert_response :success
  end

end
