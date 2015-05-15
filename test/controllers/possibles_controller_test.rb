require 'test_helper'

class PossiblesControllerTest < ActionController::TestCase
  setup do
    @possible = possibles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:possibles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create possible" do
    assert_difference('Possible.count') do
      post :create, possible: { email: @possible.email, ip_add: @possible.ip_add, name: @possible.name, receive: @possible.receive }
    end

    assert_redirected_to possible_path(assigns(:possible))
  end

  test "should show possible" do
    get :show, id: @possible
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @possible
    assert_response :success
  end

  test "should update possible" do
    patch :update, id: @possible, possible: { email: @possible.email, ip_add: @possible.ip_add, name: @possible.name, receive: @possible.receive }
    assert_redirected_to possible_path(assigns(:possible))
  end

  test "should destroy possible" do
    assert_difference('Possible.count', -1) do
      delete :destroy, id: @possible
    end

    assert_redirected_to possibles_path
  end
end
