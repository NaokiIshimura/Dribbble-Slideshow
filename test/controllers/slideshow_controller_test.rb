require 'test_helper'

class SlideshowControllerTest < ActionDispatch::IntegrationTest
  test "should get shots" do
    get slideshow_shots_url
    assert_response :success
  end

end
