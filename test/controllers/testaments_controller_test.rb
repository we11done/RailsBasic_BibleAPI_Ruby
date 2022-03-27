require "test_helper"

class TestamentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testament = testaments(:one)
  end

  test "should get index" do
    get testaments_url, as: :json
    assert_response :success
  end

  test "should create testament" do
    assert_difference("Testament.count") do
      post testaments_url, params: { testament: { name: @testament.name } }, as: :json
    end

    assert_response :created
  end

  test "should show testament" do
    get testament_url(@testament), as: :json
    assert_response :success
  end

  test "should update testament" do
    patch testament_url(@testament), params: { testament: { name: @testament.name } }, as: :json
    assert_response :success
  end

  test "should destroy testament" do
    assert_difference("Testament.count", -1) do
      delete testament_url(@testament), as: :json
    end

    assert_response :no_content
  end
end
