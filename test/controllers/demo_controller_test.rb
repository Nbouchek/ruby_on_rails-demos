require 'test_helper'

class DemoControllerTest < ActionDispatch::IntegrationTest
  test "should get static_page.html" do
    get demo_index_url
    assert_response :success
  end

end
