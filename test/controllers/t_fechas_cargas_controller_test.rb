require 'test_helper'

class TFechasCargasControllerTest < ActionController::TestCase
  setup do
    @t_fechas_carga = t_fechas_cargas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:t_fechas_cargas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create t_fechas_carga" do
    assert_difference('TFechasCarga.count') do
      post :create, t_fechas_carga: {  }
    end

    assert_redirected_to t_fechas_carga_path(assigns(:t_fechas_carga))
  end

  test "should show t_fechas_carga" do
    get :show, id: @t_fechas_carga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @t_fechas_carga
    assert_response :success
  end

  test "should update t_fechas_carga" do
    patch :update, id: @t_fechas_carga, t_fechas_carga: {  }
    assert_redirected_to t_fechas_carga_path(assigns(:t_fechas_carga))
  end

  test "should destroy t_fechas_carga" do
    assert_difference('TFechasCarga.count', -1) do
      delete :destroy, id: @t_fechas_carga
    end

    assert_redirected_to t_fechas_cargas_path
  end
end
