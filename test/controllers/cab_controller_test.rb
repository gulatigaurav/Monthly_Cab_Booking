require 'test_helper'

class CabControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cab_index_url
    assert_response :success
  end

  test "should get show" do
    get cab_show_url
    assert_response :success
  end

  test "should get new" do
    get cab_new_url
    assert_response :success
  end

  test "should get delete" do
    get cab_delete_url
    assert_response :success
  end

  test "should get update" do
    get cab_update_url
    assert_response :success
  end

end
