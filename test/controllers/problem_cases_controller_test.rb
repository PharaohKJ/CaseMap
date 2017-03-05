require 'test_helper'

class ProblemCasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @problem_case = problem_cases(:one)
  end

  test "should get index" do
    get problem_cases_url
    assert_response :success
  end

  test "should get new" do
    get new_problem_case_url
    assert_response :success
  end

  test "should create problem_case" do
    assert_difference('ProblemCase.count') do
      post problem_cases_url, params: { problem_case: { address: @problem_case.address, case_type_id: @problem_case.case_type_id, description: @problem_case.description, latitude: @problem_case.latitude, longitude: @problem_case.longitude, time: @problem_case.time } }
    end

    assert_redirected_to problem_case_url(ProblemCase.last)
  end

  test "should show problem_case" do
    get problem_case_url(@problem_case)
    assert_response :success
  end

  test "should get edit" do
    get edit_problem_case_url(@problem_case)
    assert_response :success
  end

  test "should update problem_case" do
    patch problem_case_url(@problem_case), params: { problem_case: { address: @problem_case.address, case_type_id: @problem_case.case_type_id, description: @problem_case.description, latitude: @problem_case.latitude, longitude: @problem_case.longitude, time: @problem_case.time } }
    assert_redirected_to problem_case_url(@problem_case)
  end

  test "should destroy problem_case" do
    assert_difference('ProblemCase.count', -1) do
      delete problem_case_url(@problem_case)
    end

    assert_redirected_to problem_cases_url
  end
end
