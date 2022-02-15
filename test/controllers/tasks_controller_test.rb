require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get tasks_list_url
    assert_response :success
  end

  test "should get delete" do
    get tasks_delete_url
    assert_response :success
  end

  test "should get add" do
    get tasks_add_url
    assert_response :success
  end

  test "should get edit" do
    get tasks_edit_url
    assert_response :success
  end

  test "should get create" do
    get tasks_create_url
    assert_response :success
  end
end
