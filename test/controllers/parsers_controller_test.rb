require 'test_helper'

class ParsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parser = parsers(:one)
  end

  test "should get index" do
    get parsers_url, as: :json
    assert_response :success
  end

  test "should create parser" do
    assert_difference('Parser.count') do
      post parsers_url, params: { parser: { h1: @parser.h1, h2: @parser.h2, h3: @parser.h3, link: @parser.link } }, as: :json
    end

    assert_response 201
  end

  test "should show parser" do
    get parser_url(@parser), as: :json
    assert_response :success
  end

  test "should update parser" do
    patch parser_url(@parser), params: { parser: { h1: @parser.h1, h2: @parser.h2, h3: @parser.h3, link: @parser.link } }, as: :json
    assert_response 200
  end

  test "should destroy parser" do
    assert_difference('Parser.count', -1) do
      delete parser_url(@parser), as: :json
    end

    assert_response 204
  end
end
