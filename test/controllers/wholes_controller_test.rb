require 'test_helper'

class WholesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @whole = wholes(:one)
  end

  test "should get index" do
    get wholes_url
    assert_response :success
  end

  test "should get new" do
    get new_whole_url
    assert_response :success
  end

  test "should create whole" do
    assert_difference('Whole.count') do
      post wholes_url, params: { whole: { degree: @whole.degree, description: @whole.description } }
    end

    assert_redirected_to whole_url(Whole.last)
  end

  test "should show whole" do
    get whole_url(@whole)
    assert_response :success
  end

  test "should get edit" do
    get edit_whole_url(@whole)
    assert_response :success
  end

  test "should update whole" do
    patch whole_url(@whole), params: { whole: { degree: @whole.degree, description: @whole.description } }
    assert_redirected_to whole_url(@whole)
  end

  test "should destroy whole" do
    assert_difference('Whole.count', -1) do
      delete whole_url(@whole)
    end

    assert_redirected_to wholes_url
  end
end
