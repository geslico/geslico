require 'test_helper'

class TUsuariosProgramasControllerTest < ActionController::TestCase
  setup do
    @t_usuarios_programa = t_usuarios_programas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:t_usuarios_programas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create t_usuarios_programa" do
    assert_difference('TUsuariosPrograma.count') do
      post :create, t_usuarios_programa: {  }
    end

    assert_redirected_to t_usuarios_programa_path(assigns(:t_usuarios_programa))
  end

  test "should show t_usuarios_programa" do
    get :show, id: @t_usuarios_programa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @t_usuarios_programa
    assert_response :success
  end

  test "should update t_usuarios_programa" do
    patch :update, id: @t_usuarios_programa, t_usuarios_programa: {  }
    assert_redirected_to t_usuarios_programa_path(assigns(:t_usuarios_programa))
  end

  test "should destroy t_usuarios_programa" do
    assert_difference('TUsuariosPrograma.count', -1) do
      delete :destroy, id: @t_usuarios_programa
    end

    assert_redirected_to t_usuarios_programas_path
  end
end
