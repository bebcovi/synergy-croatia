require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "actions" do
    get :index
    assert_response :success

    get :about
    assert_response :success

    get :projects
    assert_response :success

    get :collaboration
    assert_response :success

    get :experience
    assert_response :success

    get :method
    assert_response :success
  end
end
