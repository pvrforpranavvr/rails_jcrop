require 'test_helper'

class AvaterUploadersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get avater_uploaders_index_url
    assert_response :success
  end

  test "should get new" do
    get avater_uploaders_new_url
    assert_response :success
  end

end
