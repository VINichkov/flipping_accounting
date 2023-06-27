require "test_helper"

class ProjectTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_type = project_types(:one)
  end

  test "should get index" do
    get project_types_url
    assert_response :success
  end

  test "should get new" do
    get new_project_type_url
    assert_response :success
  end



  test "should show project_type" do
    get project_type_url(@project_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_type_url(@project_type)
    assert_response :success
  end

end
