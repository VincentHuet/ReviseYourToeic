require 'test_helper'

class OriginalsControllerTest < ActionController::TestCase
  setup do
    @original = originals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:originals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create original" do
    assert_difference('Original.count') do
      post :create, original: { base: @original.base, path: @original.path }
    end

    assert_redirected_to original_path(assigns(:original))
  end

  test "should show original" do
    get :show, id: @original
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @original
    assert_response :success
  end

  test "should update original" do
    put :update, id: @original, original: { base: @original.base, path: @original.path }
    assert_redirected_to original_path(assigns(:original))
  end

  test "should destroy original" do
    assert_difference('Original.count', -1) do
      delete :destroy, id: @original
    end

    assert_redirected_to originals_path
  end
end
