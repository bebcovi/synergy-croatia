require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "actions" do
    get :index
    assert_response :success
  end
end
