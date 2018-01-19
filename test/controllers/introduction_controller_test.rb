require 'test_helper'

class IntroductionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get introduction_index_url
    assert_response :success
  end

  test "should get farmer1" do
    get introduction_farmer1_url
    assert_response :success
  end

  test "should get farmer2" do
    get introduction_farmer2_url
    assert_response :success
  end

  test "should get farmer3" do
    get introduction_farmer3_url
    assert_response :success
  end

  test "should get farmer4" do
    get introduction_farmer4_url
    assert_response :success
  end

end
