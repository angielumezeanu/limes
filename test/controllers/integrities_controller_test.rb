require 'test_helper'

class IntegritiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @integrity = integrities(:one)
  end

  test "should get index" do
    get integrities_url
    assert_response :success
  end

  test "should get new" do
    get new_integrity_url
    assert_response :success
  end

  test "should create integrity" do
    assert_difference('Integrity.count') do
      post integrities_url, params: { integrity: { degree: @integrity.degree, description: @integrity.description } }
    end

    assert_redirected_to integrity_url(Integrity.last)
  end

  test "should show integrity" do
    get integrity_url(@integrity)
    assert_response :success
  end

  test "should get edit" do
    get edit_integrity_url(@integrity)
    assert_response :success
  end

  test "should update integrity" do
    patch integrity_url(@integrity), params: { integrity: { degree: @integrity.degree, description: @integrity.description } }
    assert_redirected_to integrity_url(@integrity)
  end

  test "should destroy integrity" do
    assert_difference('Integrity.count', -1) do
      delete integrity_url(@integrity)
    end

    assert_redirected_to integrities_url
  end
end
