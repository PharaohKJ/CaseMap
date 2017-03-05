require 'test_helper'

class CaseTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @case_type = case_types(:one)
  end

  test "should get index" do
    get case_types_url
    assert_response :success
  end

  test "should get new" do
    get new_case_type_url
    assert_response :success
  end

  test "should create case_type" do
    assert_difference('CaseType.count') do
      post case_types_url, params: { case_type: { name: @case_type.name } }
    end

    assert_redirected_to case_type_url(CaseType.last)
  end

  test "should show case_type" do
    get case_type_url(@case_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_case_type_url(@case_type)
    assert_response :success
  end

  test "should update case_type" do
    patch case_type_url(@case_type), params: { case_type: { name: @case_type.name } }
    assert_redirected_to case_type_url(@case_type)
  end

  test "should destroy case_type" do
    assert_difference('CaseType.count', -1) do
      delete case_type_url(@case_type)
    end

    assert_redirected_to case_types_url
  end
end
