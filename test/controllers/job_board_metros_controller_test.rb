require 'test_helper'

class JobBoardMetrosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get job_board_metros_index_url
    assert_response :success
  end

  test "should get show" do
    get job_board_metros_show_url
    assert_response :success
  end

  test "should get edit" do
    get job_board_metros_edit_url
    assert_response :success
  end

  test "should get new" do
    get job_board_metros_new_url
    assert_response :success
  end

end
