require 'test_helper'

class JobPostingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get job_postings_index_url
    assert_response :success
  end

  test "should get show" do
    get job_postings_show_url
    assert_response :success
  end

  test "should get edit" do
    get job_postings_edit_url
    assert_response :success
  end

  test "should get new" do
    get job_postings_new_url
    assert_response :success
  end

end
