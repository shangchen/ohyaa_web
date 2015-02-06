require 'test_helper'

class CyhotControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

end
