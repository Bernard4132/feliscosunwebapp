require 'test_helper'

class ShippingordersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shippingorder = shippingorders(:one)
  end

  test "should get index" do
    get shippingorders_url
    assert_response :success
  end

  test "should get new" do
    get new_shippingorder_url
    assert_response :success
  end

  test "should create shippingorder" do
    assert_difference('Shippingorder.count') do
      post shippingorders_url, params: { shippingorder: { blno: @shippingorder.blno, condition: @shippingorder.condition, containerno: @shippingorder.containerno, driverid: @shippingorder.driverid, drivername: @shippingorder.drivername, festatus: @shippingorder.festatus, fromcomp: @shippingorder.fromcomp, isocode: @shippingorder.isocode, ourref: @shippingorder.ourref, sealno: @shippingorder.sealno, shippingline: @shippingorder.shippingline, truckcompany: @shippingorder.truckcompany, trucknumber: @shippingorder.trucknumber, yourref: @shippingorder.yourref } }
    end

    assert_redirected_to shippingorder_url(Shippingorder.last)
  end

  test "should show shippingorder" do
    get shippingorder_url(@shippingorder)
    assert_response :success
  end

  test "should get edit" do
    get edit_shippingorder_url(@shippingorder)
    assert_response :success
  end

  test "should update shippingorder" do
    patch shippingorder_url(@shippingorder), params: { shippingorder: { blno: @shippingorder.blno, condition: @shippingorder.condition, containerno: @shippingorder.containerno, driverid: @shippingorder.driverid, drivername: @shippingorder.drivername, festatus: @shippingorder.festatus, fromcomp: @shippingorder.fromcomp, isocode: @shippingorder.isocode, ourref: @shippingorder.ourref, sealno: @shippingorder.sealno, shippingline: @shippingorder.shippingline, truckcompany: @shippingorder.truckcompany, trucknumber: @shippingorder.trucknumber, yourref: @shippingorder.yourref } }
    assert_redirected_to shippingorder_url(@shippingorder)
  end

  test "should destroy shippingorder" do
    assert_difference('Shippingorder.count', -1) do
      delete shippingorder_url(@shippingorder)
    end

    assert_redirected_to shippingorders_url
  end
end
