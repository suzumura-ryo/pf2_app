require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get posts_index_url
    assert_response :success
  end

  test "should get search_result" do
    get posts_search_result_url
    assert_response :success
  end

end
