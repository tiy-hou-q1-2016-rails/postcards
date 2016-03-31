require 'test_helper'

class HomepageControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get public" do
    get :public
    assert_response :success
  end

end
