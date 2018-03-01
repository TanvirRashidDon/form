require 'test_helper'

class FarmersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @farmer = farmers(:one)
  end

  test "should get index" do
    get farmers_url
    assert_response :success
  end

  test "should get new" do
    get new_farmer_url
    assert_response :success
  end

  test "should create farmer" do
    assert_difference('Farmer.count') do
      post farmers_url, params: { farmer: { email: @farmer.email, farm: @farmer.farm, name: @farmer.name, password_hash: @farmer.password_hash, produce: @farmer.produce, produce_price: @farmer.produce_price, wepay_access_token: @farmer.wepay_access_token, wepay_account_id: @farmer.wepay_account_id } }
    end

    assert_redirected_to farmer_url(Farmer.last)
  end

  test "should show farmer" do
    get farmer_url(@farmer)
    assert_response :success
  end

  test "should get edit" do
    get edit_farmer_url(@farmer)
    assert_response :success
  end

  test "should update farmer" do
    patch farmer_url(@farmer), params: { farmer: { email: @farmer.email, farm: @farmer.farm, name: @farmer.name, password_hash: @farmer.password_hash, produce: @farmer.produce, produce_price: @farmer.produce_price, wepay_access_token: @farmer.wepay_access_token, wepay_account_id: @farmer.wepay_account_id } }
    assert_redirected_to farmer_url(@farmer)
  end

  test "should destroy farmer" do
    assert_difference('Farmer.count', -1) do
      delete farmer_url(@farmer)
    end

    assert_redirected_to farmers_url
  end
end
