require 'test_helper'

class SaccessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saccess = saccesses(:one)
  end

  test "should get index" do
    get saccesses_url
    assert_response :success
  end

  test "should get new" do
    get new_saccess_url
    assert_response :success
  end

  test "should create saccess" do
    assert_difference('Saccess.count') do
      post saccesses_url, params: { saccess: { name: @saccess.name } }
    end

    assert_redirected_to saccess_url(Saccess.last)
  end

  test "should show saccess" do
    get saccess_url(@saccess)
    assert_response :success
  end

  test "should get edit" do
    get edit_saccess_url(@saccess)
    assert_response :success
  end

  test "should update saccess" do
    patch saccess_url(@saccess), params: { saccess: { name: @saccess.name } }
    assert_redirected_to saccess_url(@saccess)
  end

  test "should destroy saccess" do
    assert_difference('Saccess.count', -1) do
      delete saccess_url(@saccess)
    end

    assert_redirected_to saccesses_url
  end
end
