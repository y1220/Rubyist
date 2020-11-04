require 'test_helper'

class PartControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get part_index_url
    assert_response :success
  end

end
