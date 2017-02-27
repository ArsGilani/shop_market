require 'test_helper'

class Admin::ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_products_show_url
    assert_response :success
  end

end
