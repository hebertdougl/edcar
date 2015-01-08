require 'test_helper'

class MarcaVeiculosControllerTest < ActionController::TestCase
  setup do
    @marca_veiculo = marca_veiculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marca_veiculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marca_veiculo" do
    assert_difference('MarcaVeiculo.count') do
      post :create, marca_veiculo: { nome: @marca_veiculo.nome }
    end

    assert_redirected_to marca_veiculo_path(assigns(:marca_veiculo))
  end

  test "should show marca_veiculo" do
    get :show, id: @marca_veiculo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @marca_veiculo
    assert_response :success
  end

  test "should update marca_veiculo" do
    patch :update, id: @marca_veiculo, marca_veiculo: { nome: @marca_veiculo.nome }
    assert_redirected_to marca_veiculo_path(assigns(:marca_veiculo))
  end

  test "should destroy marca_veiculo" do
    assert_difference('MarcaVeiculo.count', -1) do
      delete :destroy, id: @marca_veiculo
    end

    assert_redirected_to marca_veiculos_path
  end
end
