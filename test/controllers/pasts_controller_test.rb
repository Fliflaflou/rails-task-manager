require "test_helper"

class PastsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get pasts_show_url
    assert_response :success
  end

  test "should get index" do
    get pasts_index_url
    assert_response :success
  end

  test "should get add" do
    get pasts_add_url
    assert_response :success
  end

  test "should get create" do
    get pasts_create_url
    assert_response :success
  end

  test "should get edit" do
    get pasts_edit_url
    assert_response :success
  end
end
