require 'test_helper'

class IdiomasControllerTest < ActionController::TestCase
  setup do
    @idioma = idiomas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:idiomas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create idioma" do
    assert_difference('Idioma.count') do
      post :create, :idioma => @idioma.attributes
    end

    assert_redirected_to idioma_path(assigns(:idioma))
  end

  test "should show idioma" do
    get :show, :id => @idioma.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @idioma.to_param
    assert_response :success
  end

  test "should update idioma" do
    put :update, :id => @idioma.to_param, :idioma => @idioma.attributes
    assert_redirected_to idioma_path(assigns(:idioma))
  end

  test "should destroy idioma" do
    assert_difference('Idioma.count', -1) do
      delete :destroy, :id => @idioma.to_param
    end

    assert_redirected_to idiomas_path
  end
end
