require 'test_helper'

class DonesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dones_index_url
    assert_response :success
  end

end
