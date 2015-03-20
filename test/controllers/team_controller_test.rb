require 'test_helper'

class TeamControllerTest < ActionController::TestCase
  test "should get teamview" do
    get :teamview
    assert_response :success
  end

end
