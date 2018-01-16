require 'test_helper'

class DadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dad = dads(:one)
  end

  test "should get index" do
    get dads_url
    assert_response :success
  end

  test "should get new" do
    get new_dad_url
    assert_response :success
  end

  test "should create dad" do
    assert_difference('Dad.count') do
      post dads_url, params: { dad: { name: @dad.name, rating: @dad.rating } }
    end

    assert_redirected_to dad_url(Dad.last)
  end

  test "should show dad" do
    get dad_url(@dad)
    assert_response :success
  end

  test "should get edit" do
    get edit_dad_url(@dad)
    assert_response :success
  end

  test "should update dad" do
    patch dad_url(@dad), params: { dad: { name: @dad.name, rating: @dad.rating } }
    assert_redirected_to dad_url(@dad)
  end

  test "should destroy dad" do
    assert_difference('Dad.count', -1) do
      delete dad_url(@dad)
    end

    assert_redirected_to dads_url
  end
end
