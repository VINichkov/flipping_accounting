require "test_helper"

class TargetParamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @target_param = target_params(:one)
  end

  test "should get index" do
    get target_params_url
    assert_response :success
  end

  test "should get new" do
    get new_target_param_url
    assert_response :success
  end

  test "should create target_param" do
    assert_difference("TargetParam.count") do
      post target_params_url, params: { target_param: { additional_expenses: @target_param.additional_expenses, initial_fee: @target_param.initial_fee, is_credit: @target_param.is_credit, monthly_payment: @target_param.monthly_payment, mortgage_interest: @target_param.mortgage_interest, project_duration: @target_param.project_duration, project_id: @target_param.project_id, start_price: @target_param.start_price } }
    end

    assert_redirected_to target_param_url(TargetParam.last)
  end

  test "should show target_param" do
    get target_param_url(@target_param)
    assert_response :success
  end

  test "should get edit" do
    get edit_target_param_url(@target_param)
    assert_response :success
  end

  test "should update target_param" do
    patch target_param_url(@target_param), params: { target_param: { additional_expenses: @target_param.additional_expenses, initial_fee: @target_param.initial_fee, is_credit: @target_param.is_credit, monthly_payment: @target_param.monthly_payment, mortgage_interest: @target_param.mortgage_interest, project_duration: @target_param.project_duration, project_id: @target_param.project_id, start_price: @target_param.start_price } }
    assert_redirected_to target_param_url(@target_param)
  end

  test "should destroy target_param" do
    assert_difference("TargetParam.count", -1) do
      delete target_param_url(@target_param)
    end

    assert_redirected_to target_params_url
  end
end
