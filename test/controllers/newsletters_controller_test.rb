require 'test_helper'

class NewslettersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get newsletters_index_url
    assert_response :success
  end

end
