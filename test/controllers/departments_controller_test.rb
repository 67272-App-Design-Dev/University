require 'test_helper'

class DepartmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @department = FactoryBot.create(:department)
  end

  test "should get index" do
    get departments_path
    assert_response :success
  end

  test "should get show" do
    get department_path(@department)
    assert_response :success
  end

  test "should get new" do
    get new_department_path
    assert_response :success
  end

  test "should get edit" do
    get edit_department_path(@department)
    assert_response :success
  end

end
