require 'test_helper'

class BookControllerTest < ActionDispatch::IntegrationTest
  test "should get main_page" do
    get book_main_page_url
    assert_response :success
  end

end
