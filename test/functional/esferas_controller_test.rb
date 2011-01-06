require 'test_helper'

class EsferasControllerTest < ActionController::TestCase
  setup do
    @esfera = esferas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:esferas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create esfera" do
    assert_difference('Esfera.count') do
      post :create, :esfera => @esfera.attributes
    end

    assert_redirected_to esfera_path(assigns(:esfera))
  end

  test "should show esfera" do
    get :show, :id => @esfera.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @esfera.to_param
    assert_response :success
  end

  test "should update esfera" do
    put :update, :id => @esfera.to_param, :esfera => @esfera.attributes
    assert_redirected_to esfera_path(assigns(:esfera))
  end

  test "should destroy esfera" do
    assert_difference('Esfera.count', -1) do
      delete :destroy, :id => @esfera.to_param
    end

    assert_redirected_to esferas_path
  end
end
