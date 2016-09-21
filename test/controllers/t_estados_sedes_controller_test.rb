require 'test_helper'

class TEstadosSedesControllerTest < ActionController::TestCase
  setup do
    @t_estados_sede = t_estados_sedes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:t_estados_sedes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create t_estados_sede" do
    assert_difference('TEstadosSede.count') do
      post :create, t_estados_sede: {  }
    end

    assert_redirected_to t_estados_sede_path(assigns(:t_estados_sede))
  end

  test "should show t_estados_sede" do
    get :show, id: @t_estados_sede
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @t_estados_sede
    assert_response :success
  end

  test "should update t_estados_sede" do
    patch :update, id: @t_estados_sede, t_estados_sede: {  }
    assert_redirected_to t_estados_sede_path(assigns(:t_estados_sede))
  end

  test "should destroy t_estados_sede" do
    assert_difference('TEstadosSede.count', -1) do
      delete :destroy, id: @t_estados_sede
    end

    assert_redirected_to t_estados_sedes_path
  end
end
