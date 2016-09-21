require 'test_helper'

class TAcronimosSedeEdRsControllerTest < ActionController::TestCase
  setup do
    @t_acronimos_sede_edr = t_acronimos_sede_edrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:t_acronimos_sede_edrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create t_acronimos_sede_edr" do
    assert_difference('TAcronimosSedeEdr.count') do
      post :create, t_acronimos_sede_edr: {  }
    end

    assert_redirected_to t_acronimos_sede_edr_path(assigns(:t_acronimos_sede_edr))
  end

  test "should show t_acronimos_sede_edr" do
    get :show, id: @t_acronimos_sede_edr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @t_acronimos_sede_edr
    assert_response :success
  end

  test "should update t_acronimos_sede_edr" do
    patch :update, id: @t_acronimos_sede_edr, t_acronimos_sede_edr: {  }
    assert_redirected_to t_acronimos_sede_edr_path(assigns(:t_acronimos_sede_edr))
  end

  test "should destroy t_acronimos_sede_edr" do
    assert_difference('TAcronimosSedeEdr.count', -1) do
      delete :destroy, id: @t_acronimos_sede_edr
    end

    assert_redirected_to t_acronimos_sede_edrs_path
  end
end
