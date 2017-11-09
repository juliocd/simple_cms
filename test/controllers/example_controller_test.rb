require 'test_helper'

class ExampleControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get example_show_url
    assert_response :success
  end

  test "should get new" do
    get example_new_url
    assert_response :success
  end

  test "should get edit" do
    get example_edit_url
    assert_response :success
  end

  test "should get delete" do
    get example_delete_url
    assert_response :success
  end

end
