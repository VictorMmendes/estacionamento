require 'test_helper'

class PrecosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @preco = precos(:one)
  end

  test "should get index" do
    get precos_url, as: :json
    assert_response :success
  end

  test "should create preco" do
    assert_difference('Preco.count') do
      post precos_url, params: { preco: { valor: @preco.valor } }, as: :json
    end

    assert_response 201
  end

  test "should show preco" do
    get preco_url(@preco), as: :json
    assert_response :success
  end

  test "should update preco" do
    patch preco_url(@preco), params: { preco: { valor: @preco.valor } }, as: :json
    assert_response 200
  end

  test "should destroy preco" do
    assert_difference('Preco.count', -1) do
      delete preco_url(@preco), as: :json
    end

    assert_response 204
  end
end
