require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "index" do
    get :index
    assert_response :success

    # Home#index should be root
    assert_equal root_path, home_path
  end
end
