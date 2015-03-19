require 'test_helper'

class TestContsControllerTest < ActionController::TestCase
  test "should get TestView" do
    get :TestView
    assert_response :success
  end

end
