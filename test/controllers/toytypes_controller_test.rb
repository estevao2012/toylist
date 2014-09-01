require 'test_helper'

class ToytypesControllerTest < ActionController::TestCase
  setup do
    @toytype = toytypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:toytypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create toytype" do
    assert_difference('Toytype.count') do
      post :create, toytype: { description: @toytype.description, toytype: @toytype.toytype }
    end

    assert_redirected_to toytype_path(assigns(:toytype))
  end

  test "should show toytype" do
    get :show, id: @toytype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @toytype
    assert_response :success
  end

  test "should update toytype" do
    patch :update, id: @toytype, toytype: { description: @toytype.description, toytype: @toytype.toytype }
    assert_redirected_to toytype_path(assigns(:toytype))
  end

  test "should destroy toytype" do
    assert_difference('Toytype.count', -1) do
      delete :destroy, id: @toytype
    end

    assert_redirected_to toytypes_path
  end
end
