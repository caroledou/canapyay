require 'test_helper'

class SofasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sofas_index_url
    assert_response :success
  end

  test "should get new" do
    get sofas_new_url
    assert_response :success
  end

  test "should get create" do
    get sofas_create_url
    assert_response :success
  end

end
