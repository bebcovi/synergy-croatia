require 'test_helper'

class RoutesTest < ActionDispatch::IntegrationTest
  test "ErrorsController" do
    assert_routing "404", {:controller => "errors", :action => "not_found"}
    assert_routing "500", {:controller => "errors", :action => "internal_server_error"}
  end

  test "HomeController" do
    assert_routing home_path, {:controller => "home", :action => "index"}
    assert_equal root_path, home_path
  end

  test "TrainingsController" do
    assert_routing({:method => :get, :path => training_path(1)}, {:controller => "trainings", :action => "show", :id => "1"})
    assert_routing({:method => :get, :path => new_training_path}, {:controller => "trainings", :action => "new"})
    assert_routing({:method => :post, :path => trainings_path}, {:controller => "trainings", :action => "create"})
    assert_routing({:method => :get, :path => edit_training_path(1)}, {:controller => "trainings", :action => "edit", :id => "1"})
    assert_routing({:method => :put, :path => training_path(1)}, {:controller => "trainings", :action => "update", :id => "1"})
    assert_routing({:method => :delete, :path => training_path(1)}, {:controller => "trainings", :action => "destroy", :id => "1"})
  end
end
