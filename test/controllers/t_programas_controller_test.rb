require 'test_helper'

class TProgramasControllerTest < ActionController::TestCase
  setup do
    @t_programa = t_programas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:t_programas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create t_programa" do
    assert_difference('TPrograma.count') do
      post :create, t_programa: {  }
    end

    assert_redirected_to t_programa_path(assigns(:t_programa))
  end

  test "should show t_programa" do
    get :show, id: @t_programa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @t_programa
    assert_response :success
  end

  test "should update t_programa" do
    patch :update, id: @t_programa, t_programa: {  }
    assert_redirected_to t_programa_path(assigns(:t_programa))
  end

  test "should destroy t_programa" do
    assert_difference('TPrograma.count', -1) do
      delete :destroy, id: @t_programa
    end

    assert_redirected_to t_programas_path
  end
end
