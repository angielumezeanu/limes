require 'test_helper'

class IntactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intact = intacts(:one)
  end

  test "should get index" do
    get intacts_url
    assert_response :success
  end

  test "should get new" do
    get new_intact_url
    assert_response :success
  end

  test "should create intact" do
    assert_difference('Intact.count') do
      post intacts_url, params: { intact: { degree: @intact.degree, description: @intact.description } }
    end

    assert_redirected_to intact_url(Intact.last)
  end

  test "should show intact" do
    get intact_url(@intact)
    assert_response :success
  end

  test "should get edit" do
    get edit_intact_url(@intact)
    assert_response :success
  end

  test "should update intact" do
    patch intact_url(@intact), params: { intact: { degree: @intact.degree, description: @intact.description } }
    assert_redirected_to intact_url(@intact)
  end

  test "should destroy intact" do
    assert_difference('Intact.count', -1) do
      delete intact_url(@intact)
    end

    assert_redirected_to intacts_url
  end
end
