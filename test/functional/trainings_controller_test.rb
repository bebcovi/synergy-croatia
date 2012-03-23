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
end
