require 'test_helper'

class TrainingsControllerTest < ActionController::TestCase
  test "new" do
    get :new
    assert_response :success
    assert_not_nil assigns(:training)
  end

  test "create" do
    assert_difference "Training.count" do
      post :create, :training => {}
    end
    assert_response :redirect
    assert_not_nil assigns(:training)
  end

  test "edit" do
    get :edit, :id => trainings(:ok).id
    assert_response :success
    assert_not_nil assigns(:training)
  end

  test "update" do
    put :update, {:id => trainings(:ok).id, :training => {}}
    assert_response :redirect
    assert_not_nil assigns(:training)
  end

  test "destroy" do
    request.env["HTTP_REFERER"] = new_training_path
    assert_difference "Training.count", -1 do
      delete :destroy, :id => trainings(:sucky).id
    end
    assert_response :redirect
    assert_not_nil flash[:notice]
  end

  test "routes" do
    route = {:controller => "trainings", :locale => I18n.default_locale.to_s}
    assert_routing({:method => :get, :path => training_path(:id => 1)}, route.dup.update(:action => "show", :id => "1"))
    assert_routing({:method => :get, :path => new_training_path}, route.dup.update(:action => "new"))
    assert_routing({:method => :post, :path => trainings_path}, route.dup.update(:action => "create"))
    assert_routing({:method => :get, :path => edit_training_path(:id => 1)}, route.dup.update(:action => "edit", :id => "1"))
    assert_routing({:method => :put, :path => training_path(:id => 1)}, route.dup.update(:action => "update", :id => "1"))
    assert_routing({:method => :delete, :path => training_path(:id => 1)}, route.dup.update(:action => "destroy", :id => "1"))
  end
end
