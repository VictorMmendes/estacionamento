require 'test_helper'

class CorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cor = cors(:one)
  end

  test "should get index" do
    get cors_url, as: :json
    assert_response :success
  end

  test "should create cor" do
    assert_difference('Cor.count') do
      post cors_url, params: { cor: { nome: @cor.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show cor" do
    get cor_url(@cor), as: :json
    assert_response :success
  end

  test "should update cor" do
    patch cor_url(@cor), params: { cor: { nome: @cor.nome } }, as: :json
    assert_response 200
  end

  test "should destroy cor" do
    assert_difference('Cor.count', -1) do
      delete cor_url(@cor), as: :json
    end

    assert_response 204
  end
end
