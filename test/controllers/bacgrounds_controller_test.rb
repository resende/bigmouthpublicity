require 'test_helper'

class BacgroundsControllerTest < ActionController::TestCase
  setup do
    @bacground = bacgrounds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bacgrounds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bacground" do
    assert_difference('Bacground.count') do
      post :create, bacground: { active: @bacground.active, image: @bacground.image }
    end

    assert_redirected_to bacground_path(assigns(:bacground))
  end

  test "should show bacground" do
    get :show, id: @bacground
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bacground
    assert_response :success
  end

  test "should update bacground" do
    patch :update, id: @bacground, bacground: { active: @bacground.active, image: @bacground.image }
    assert_redirected_to bacground_path(assigns(:bacground))
  end

  test "should destroy bacground" do
    assert_difference('Bacground.count', -1) do
      delete :destroy, id: @bacground
    end

    assert_redirected_to bacgrounds_path
  end
end
