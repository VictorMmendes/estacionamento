require 'test_helper'

class CarrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carro = carros(:one)
  end

  test "should get index" do
    get carros_url, as: :json
    assert_response :success
  end

  test "should create carro" do
    assert_difference('Carro.count') do
      post carros_url, params: { carro: { classe_id: @carro.classe_id, cor_id: @carro.cor_id, marca_id: @carro.marca_id, placa: @carro.placa, preco_id: @carro.preco_id } }, as: :json
    end

    assert_response 201
  end

  test "should show carro" do
    get carro_url(@carro), as: :json
    assert_response :success
  end

  test "should update carro" do
    patch carro_url(@carro), params: { carro: { classe_id: @carro.classe_id, cor_id: @carro.cor_id, marca_id: @carro.marca_id, placa: @carro.placa, preco_id: @carro.preco_id } }, as: :json
    assert_response 200
  end

  test "should destroy carro" do
    assert_difference('Carro.count', -1) do
      delete carro_url(@carro), as: :json
    end

    assert_response 204
  end
end
