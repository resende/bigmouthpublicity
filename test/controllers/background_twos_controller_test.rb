require 'test_helper'

class BackgroundTwosControllerTest < ActionController::TestCase
  setup do
    @background_two = background_twos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:background_twos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create background_two" do
    assert_difference('BackgroundTwo.count') do
      post :create, background_two: { active: @background_two.active, image: @background_two.image }
    end

    assert_redirected_to background_two_path(assigns(:background_two))
  end

  test "should show background_two" do
    get :show, id: @background_two
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @background_two
    assert_response :success
  end

  test "should update background_two" do
    patch :update, id: @background_two, background_two: { active: @background_two.active, image: @background_two.image }
    assert_redirected_to background_two_path(assigns(:background_two))
  end

  test "should destroy background_two" do
    assert_difference('BackgroundTwo.count', -1) do
      delete :destroy, id: @background_two
    end

    assert_redirected_to background_twos_path
  end
end
