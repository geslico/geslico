require 'test_helper'

class TUsuariosControllerTest < ActionController::TestCase
  setup do
    @t_usuario = t_usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:t_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create t_usuario" do
    assert_difference('TUsuario.count') do
      post :create, t_usuario: {  }
    end

    assert_redirected_to t_usuario_path(assigns(:t_usuario))
  end

  test "should show t_usuario" do
    get :show, id: @t_usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @t_usuario
    assert_response :success
  end

  test "should update t_usuario" do
    patch :update, id: @t_usuario, t_usuario: {  }
    assert_redirected_to t_usuario_path(assigns(:t_usuario))
  end

  test "should destroy t_usuario" do
    assert_difference('TUsuario.count', -1) do
      delete :destroy, id: @t_usuario
    end

    assert_redirected_to t_usuarios_path
  end
end
