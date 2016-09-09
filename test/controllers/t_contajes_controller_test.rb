require 'test_helper'

class TContajesControllerTest < ActionController::TestCase
  setup do
    @t_contaje = t_contajes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:t_contajes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create t_contaje" do
    assert_difference('TContaje.count') do
      post :create, t_contaje: {  }
    end

    assert_redirected_to t_contaje_path(assigns(:t_contaje))
  end

  test "should show t_contaje" do
    get :show, id: @t_contaje
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @t_contaje
    assert_response :success
  end

  test "should update t_contaje" do
    patch :update, id: @t_contaje, t_contaje: {  }
    assert_redirected_to t_contaje_path(assigns(:t_contaje))
  end

  test "should destroy t_contaje" do
    assert_difference('TContaje.count', -1) do
      delete :destroy, id: @t_contaje
    end

    assert_redirected_to t_contajes_path
  end
end
