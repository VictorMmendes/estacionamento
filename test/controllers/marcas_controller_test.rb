require 'test_helper'

class MarcasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marca = marcas(:one)
  end

  test "should get index" do
    get marcas_url, as: :json
    assert_response :success
  end

  test "should create marca" do
    assert_difference('Marca.count') do
      post marcas_url, params: { marca: { descricao: @marca.descricao } }, as: :json
    end

    assert_response 201
  end

  test "should show marca" do
    get marca_url(@marca), as: :json
    assert_response :success
  end

  test "should update marca" do
    patch marca_url(@marca), params: { marca: { descricao: @marca.descricao } }, as: :json
    assert_response 200
  end

  test "should destroy marca" do
    assert_difference('Marca.count', -1) do
      delete marca_url(@marca), as: :json
    end

    assert_response 204
  end
end
