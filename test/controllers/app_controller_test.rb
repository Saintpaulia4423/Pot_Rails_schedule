require "test_helper"

class AppControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get app_new_url
    assert_response :success
  end

  test "should get index" do
    get app_index_url
    assert_response :success
  end

  test "should get edit" do
    get app_edit_url
    assert_response :success
  end
end
