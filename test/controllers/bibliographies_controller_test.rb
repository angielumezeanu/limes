require 'test_helper'

class BibliographiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bibliography = bibliographies(:one)
  end

  test "should get index" do
    get bibliographies_url
    assert_response :success
  end

  test "should get new" do
    get new_bibliography_url
    assert_response :success
  end

  test "should create bibliography" do
    assert_difference('Bibliography.count') do
      post bibliographies_url, params: { bibliography: { abbreviation: @bibliography.abbreviation, title: @bibliography.title } }
    end

    assert_redirected_to bibliography_url(Bibliography.last)
  end

  test "should show bibliography" do
    get bibliography_url(@bibliography)
    assert_response :success
  end

  test "should get edit" do
    get edit_bibliography_url(@bibliography)
    assert_response :success
  end

  test "should update bibliography" do
    patch bibliography_url(@bibliography), params: { bibliography: { abbreviation: @bibliography.abbreviation, title: @bibliography.title } }
    assert_redirected_to bibliography_url(@bibliography)
  end

  test "should destroy bibliography" do
    assert_difference('Bibliography.count', -1) do
      delete bibliography_url(@bibliography)
    end

    assert_redirected_to bibliographies_url
  end
end
