require 'test_helper'

class ContentTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get content_types_index_url
    assert_response :success
  end

end
