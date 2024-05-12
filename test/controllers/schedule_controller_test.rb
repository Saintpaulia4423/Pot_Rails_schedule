require "test_helper"

class ScheduleControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get schedule_create_url
    assert_response :success
  end

  test "should get read" do
    get schedule_read_url
    assert_response :success
  end

  test "should get update" do
    get schedule_update_url
    assert_response :success
  end

  test "should get delete" do
    get schedule_delete_url
    assert_response :success
  end
end
