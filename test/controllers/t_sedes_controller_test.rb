require 'test_helper'

class TSedesControllerTest < ActionController::TestCase
  setup do
    @t_sede = t_sedes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:t_sedes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create t_sede" do
    assert_difference('TSede.count') do
      post :create, t_sede: {  }
    end

    assert_redirected_to t_sede_path(assigns(:t_sede))
  end

  test "should show t_sede" do
    get :show, id: @t_sede
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @t_sede
    assert_response :success
  end

  test "should update t_sede" do
    patch :update, id: @t_sede, t_sede: {  }
    assert_redirected_to t_sede_path(assigns(:t_sede))
  end

  test "should destroy t_sede" do
    assert_difference('TSede.count', -1) do
      delete :destroy, id: @t_sede
    end

    assert_redirected_to t_sedes_path
  end
end
