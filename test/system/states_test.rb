require "application_system_test_case"


class StatesTest < ApplicationSystemTestCase
  setup do
    @state = states(:three)
  end

  test "visiting the index" do
    visit states_url
    assert_selector "h1", text: "Статусы проектов"
  end

  test "should create state" do
    visit states_url
    click_on "New state"

    fill_in "Name", with: @state.name
    click_on "Create State"

    assert_text "State was successfully created"
  end

  test "should update State" do
    visit state_url(@state)
    click_on "Edit this state", match: :first

    fill_in "Name", with: @state.name
    click_on "Update State"

    assert_text "State was successfully updated"
  end

  test "should destroy State" do

    accept_prompt do
      visit states_url
      puts("a[href='/states/#{State.last.id}']")
      find("a[href='/states/#{State.find_by_name('NewStateThree').id}']").click
      assert_text "State was successfully destroyed."
    end

  end

end
