require 'test_helper'

class ErrorsControllerTest < ActionController::TestCase
  test "HTTP error codes" do
    get :not_found
    assert_response :not_found

    get :internal_server_error
    assert_response :internal_server_error
  end
end
