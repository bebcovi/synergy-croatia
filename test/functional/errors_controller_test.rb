require 'test_helper'

class ErrorsControllerTest < ActionController::TestCase
  test "actions" do
    get :not_found
    assert_response :not_found

    get :internal_server_error
    assert_response :internal_server_error
  end

  test "routes" do
    assert_routing "404", {:controller => "errors", :action => "not_found"}
    assert_routing "500", {:controller => "errors", :action => "internal_server_error"}
  end
end
