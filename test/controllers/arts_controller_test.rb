require 'test_helper'

class ArtsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get arts_show_url
    assert_response :success
  end

  test "should get new" do
    get arts_new_url
    assert_response :success
  end

  test "should get create" do
    get arts_create_url
    assert_response :success
  end

  test "should get destroy" do
    get arts_destroy_url
    assert_response :success
  end

end
