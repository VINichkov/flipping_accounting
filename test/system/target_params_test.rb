require "application_system_test_case"

class TargetParamsTest < ApplicationSystemTestCase
  setup do
    @target_param = target_params(:one)
  end

  test "visiting the index" do
    visit target_params_url
    assert_selector "h1", text: "Target params"
  end

  test "should create target param" do
    visit target_params_url
    click_on "New target param"

    fill_in "Additional expenses", with: @target_param.additional_expenses
    fill_in "Initial fee", with: @target_param.initial_fee
    check "Is credit" if @target_param.is_credit
    fill_in "Monthly payment", with: @target_param.monthly_payment
    fill_in "Mortgage interest", with: @target_param.mortgage_interest
    fill_in "Project duration", with: @target_param.project_duration
    fill_in "Project", with: @target_param.project_id
    fill_in "Start price", with: @target_param.start_price
    click_on "Create Target param"

    assert_text "Target param was successfully created"
    click_on "Back"
  end

  test "should update Target param" do
    visit target_param_url(@target_param)
    click_on "Edit this target param", match: :first

    fill_in "Additional expenses", with: @target_param.additional_expenses
    fill_in "Initial fee", with: @target_param.initial_fee
    check "Is credit" if @target_param.is_credit
    fill_in "Monthly payment", with: @target_param.monthly_payment
    fill_in "Mortgage interest", with: @target_param.mortgage_interest
    fill_in "Project duration", with: @target_param.project_duration
    fill_in "Project", with: @target_param.project_id
    fill_in "Start price", with: @target_param.start_price
    click_on "Update Target param"

    assert_text "Target param was successfully updated"
    click_on "Back"
  end

  test "should destroy Target param" do
    visit target_param_url(@target_param)
    click_on "Destroy this target param", match: :first

    assert_text "Target param was successfully destroyed"
  end
end
