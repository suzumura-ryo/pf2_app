require 'test_helper'

class ProceduresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get procedures_index_url
    assert_response :success
  end

  test "should get show" do
    get procedures_show_url
    assert_response :success
  end

  test "should get new" do
    get procedures_new_url
    assert_response :success
  end

  test "should get create" do
    get procedures_create_url
    assert_response :success
  end

  test "should get edit" do
    get procedures_edit_url
    assert_response :success
  end

  test "should get update" do
    get procedures_update_url
    assert_response :success
  end

  test "should get destroy" do
    get procedures_destroy_url
    assert_response :success
  end

end
