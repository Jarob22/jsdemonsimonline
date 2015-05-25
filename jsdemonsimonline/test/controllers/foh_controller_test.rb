require 'test_helper'

class FohControllerTest < ActionController::TestCase
  test "should get showresults" do
    get :showresults
    assert_response :success
  end

end
