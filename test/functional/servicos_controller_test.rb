require 'test_helper'

class ServicosControllerTest < ActionController::TestCase
  setup do
    @servico = servicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servico" do
    assert_difference('Servico.count') do
      post :create, :servico => @servico.attributes
    end

    assert_redirected_to servico_path(assigns(:servico))
  end

  test "should show servico" do
    get :show, :id => @servico.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @servico.to_param
    assert_response :success
  end

  test "should update servico" do
    put :update, :id => @servico.to_param, :servico => @servico.attributes
    assert_redirected_to servico_path(assigns(:servico))
  end

  test "should destroy servico" do
    assert_difference('Servico.count', -1) do
      delete :destroy, :id => @servico.to_param
    end

    assert_redirected_to servicos_path
  end
end
