require 'test_helper'

class DepartmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @department = FactoryBot.create(:department)
  end

  test "should get index" do
    # go to this route
    get departments_path
    # verify that there is a proper response
    assert_response :success
    # verify the instance variable is present and named appropriately
    assert_not_nil assigns(:active_departments)
  end

  test "should get show" do
    get department_path(@department)
    assert_response :success
    assert_not_nil assigns(:department)
  end

  test "should get new" do
    get new_department_path
    assert_response :success
    assert_not_nil assigns(:department)
  end

  test "should get edit" do
    get edit_department_path(@department)
    assert_response :success
    assert_not_nil assigns(:department)
  end

end
